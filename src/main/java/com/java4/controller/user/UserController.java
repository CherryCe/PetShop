package com.java4.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java4.constant.SessionAttr;
import com.java4.entity.User;
import com.java4.service.EmailService;
import com.java4.service.UserService;
import com.java4.service.impl.EmailServiceImpl;
import com.java4.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/change-pass", "/forgot-pass", "/login", "/logout", "/register" })
public class UserController extends HttpServlet {

	private static final long serialVersionUID = 2392162893955174422L;

	private UserService userService = new UserServiceImpl();
	private EmailService emailService = new EmailServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch (path) {
		case "/change-pass":
			doGetChangePass(req, resp);
			break;

		case "/forgot-pass":
			doGetForgotPass(req, resp);
			break;

		case "/login":
			doGetLogin(req, resp);
			break;

		case "/logout":
			doGetLogout(session, req, resp);
			break;

		case "/register":
			doGetRegister(req, resp);
			break;

		default:
			break;
		}
	}

	private void doGetChangePass(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/change-pass.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetForgotPass(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/forgot-pass.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/login.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetLogout(HttpSession sesssion, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		sesssion.removeAttribute(SessionAttr.CURRENT_USER);
		resp.sendRedirect("index");
	}

	private void doGetRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/register.jsp");
		requestDispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch (path) {
		case "/change-pass":
			doPostChangePass(session, req, resp);
			break;

		case "/forgot-pass":
			doPostForgotPass(req, resp);
			break;

		case "/login":
			doPostLogin(session, req, resp);
			break;

		case "/register":
			doPostRegister(session, req, resp);
			break;

		default:
			break;
		}
	}

	private void doPostLogin(HttpSession session, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		User user = userService.login(username, password);
		if (user != null) {
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}

	private void doPostRegister(HttpSession session, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		User user = userService.register(username, password, email);
		if (user != null) {
			emailService.sendEmail(getServletContext(), user, "welcome");
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}

	private void doPostForgotPass(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("application/json");
		String email = req.getParameter("email");
		User userWithNewPass = userService.resetPassword(email);
		if (userWithNewPass != null) {
			emailService.sendEmail(getServletContext(), userWithNewPass, "forgot");
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}

	private void doPostChangePass(HttpSession session, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("application/json");
		String currentPass = req.getParameter("currentPass");
		String newPass = req.getParameter("newPass");
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser.getPassword().equals(currentPass)) {
			currentUser.setPassword(newPass);
			User updateUser = userService.update(currentUser);
			if (updateUser != null) {
				session.setAttribute(SessionAttr.CURRENT_USER, updateUser);
				resp.setStatus(204);
			} else {
				resp.setStatus(400);
			}
		} else {
			resp.setStatus(400);
		}
	}
}
