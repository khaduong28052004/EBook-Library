package com.foti_java.model;

import java.io.File;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MailSender {
	private String from = "khaduong28052004@gmail.com";
	private String toEmail;
	private String subject;
	private String content;
	 @JsonIgnore
	private List<String> cc;
	 @JsonIgnore
	private List<String> bcc;
	 @JsonIgnore
	private List<File> files;

	public MailSender(String toEmail, String subject, String content) {
		this.toEmail = toEmail;
		this.subject = subject;
		this.content = content;
	}

}
