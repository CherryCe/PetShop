package com.java4.controller.admin;

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

@WebServlet(urlPatterns = { "/admin" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = 1672833033433878897L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String action = req.getParameter("action");
			switch (action) {
			case "404":
				doGet404(req, resp);
				break;

			case "blank":
				doGetBlank(req, resp);
				break;

			case "button":
				doGetButton(req, resp);
				break;

			case "chart":
				doGetChart(req, resp);
				break;

			case "element":
				doGetElement(req, resp);
				break;

			case "form":
				doGetForm(req, resp);
				break;

			case "index":
				doGetIndex(req, resp);
				break;

			case "signin":
				doGetSignin(req, resp);
				break;

			case "signup":
				doGetSignup(req, resp);
				break;

			case "table":
				doGetTable(req, resp);
				break;

			case "typography":
				doGetTypography(req, resp);
				break;

			case "widget":
				doGetWidget(req, resp);
				break;

			default:
				break;
			}
		}else {
			resp.sendRedirect("index");
		}
	}

	private void doGet404(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/404.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetBlank(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/blank.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetButton(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/button.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetChart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/chart.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetElement(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/element.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/form.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetIndex(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/index.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetSignin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/signin.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetSignup(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/signup.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetTable(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/table.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetTypography(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/typography.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetWidget(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/widget.jsp");
		requestDispatcher.forward(req, resp);
	}

}
