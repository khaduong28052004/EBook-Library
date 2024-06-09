package com.foti_java.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.foti_java.service.AuthInterceptor;

//import com.kot.service.AuthInterceptor;
@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	@Autowired
	AuthInterceptor interceptor;
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		registry.addInterceptor(interceptor).addPathPatterns("/admin/**","/seller/**");
		
//		 .excludePathPatterns("/Ebook/account/**");  // Exclude account-related paths if necessary
	}
}
