package com.foti_java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.foti_java.model.Account;
import com.foti_java.model.RoleDetail;
import com.foti_java.repository.RoleDetailRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class AuthInterceptor implements HandlerInterceptor {

    @Autowired
    private SessionService sessionService;

    @Autowired
    private RoleDetailRepository roleDetailRepository;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Account user = sessionService.getAttribute("account");
        String uri = request.getRequestURI();
        
        if (user == null) {
            response.sendRedirect("/Ebook/account/login");
            return false;
        }

        // Check for admin access
        if (uri.contains("/Ebook/admin/")) {
            if (!hasRole(user, "admin")) {
                response.sendRedirect("/Ebook/account/login");
                return false;
            }
        }

        // Check for seller access
        if (uri.contains("/Ebook/seller/")) {
            if (!hasRole(user, "seller")) {
                response.sendRedirect("/Ebook/account/login");
                return false;
            }
        }

        return true;
    }

    private boolean hasRole(Account account, String roleName) {
        List<RoleDetail> roles = roleDetailRepository.findByAccount(account);
        for (RoleDetail roleDetail : roles) {
            if (roleDetail.getRole().getName().equalsIgnoreCase(roleName)) {
                return true;
            }
        }
        return false;
    }
}
