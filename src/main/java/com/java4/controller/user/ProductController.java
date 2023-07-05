package com.java4.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java4.entity.Product;
import com.java4.service.ProductService;
import com.java4.service.impl.ProductServiceImpl;

@WebServlet(urlPatterns = { "/product-detail" })
public class ProductController extends HttpServlet {

	private static final long serialVersionUID = 1789655577153580002L;
	private ProductService productService = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		switch (action) {
		case "watch":
			doGetWatch(req, resp);
			break;

		default:
			break;
		}
	}

	private void doGetWatch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Product product = productService.findById(Integer.parseInt(req.getParameter("id")));
		req.setAttribute("product", product);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/product-detail.jsp");
		requestDispatcher.forward(req, resp);
	}
}
