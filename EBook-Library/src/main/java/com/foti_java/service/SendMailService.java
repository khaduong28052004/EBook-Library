package com.foti_java.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.foti_java.model.MailSender;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class SendMailService {
	@Autowired
	JavaMailSender sender;

	List<MimeMessage> queue = new ArrayList<MimeMessage>();

	public void push(String to, String subject, String content) {
		MailSender mail = new MailSender(to, subject, content);
		this.push(mail);
	}

	public void push(MailSender mail) {
		MimeMessage mime = sender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(mime, true, "utf-8");
			helper.setFrom(mail.getFrom());
			helper.setTo(mail.getToEmail());
			helper.setSubject(mail.getSubject());
			helper.setText(mail.getContent(), true);
			try {
				for (String cc : mail.getCc()) {
					helper.addCc(cc);
				}
				for (String bcc : mail.getBcc()) {
					helper.addBcc(bcc);
				}
				for (File file : mail.getFiles()) {
					helper.addAttachment(file.getName(), file);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		queue.add(mime);
	}

	@Scheduled(fixedDelay = 10)
	public void run() {
		int error = 0;
		int success = 0;
		try {
			while (!queue.isEmpty()) {
				MimeMessage mime = queue.remove(0);
				sender.send(mime);
				success++;
			}
		} catch (Exception e) {
			error++;
		}
//		System.out.println("success : " + success + "/n error : " + error);
	}
}
