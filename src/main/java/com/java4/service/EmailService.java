package com.java4.service;

import javax.servlet.ServletContext;

import com.java4.entity.User;

public interface EmailService {
	void sendEmail(ServletContext context, User recipient, String type);
}
