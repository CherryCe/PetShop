package com.java4.controller.admin;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.java4.constant.SessionAttr;
import com.java4.entity.Category;
import com.java4.entity.Product;
import com.java4.entity.User;
import com.java4.service.CategoryService;
import com.java4.service.ProductService;
import com.java4.service.impl.CategoryServiceImpl;
import com.java4.service.impl.ProductServiceImpl;

@WebServlet(urlPatterns = { "/admin-product" })
public class ProductController extends HttpServlet {

	private static final long serialVersionUID = 4334176140413997745L;
	private ProductService productService = new ProductServiceImpl();
	private CategoryService categoryService = new CategoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String action = req.getParameter("action");
			switch (action) {
			case "add":
				req.setAttribute("isEdit", "false");
				doGetAdd(req, resp);
				break;

			case "delete":
				doGetDelete(req, resp);
				break;

			case "edit":
				req.setAttribute("isEdit", "true");
				doGetEdit(req, resp);
				break;

			case "overview":
				doGetOverView(req, resp);
				break;

			default:
				break;
			}
		} else {
			resp.sendRedirect("index");
		}
	}

	private void doGetAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Category> categories = categoryService.findAll();
		req.setAttribute("categories", categories);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/product-edit.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		Product productDeleted = productService.delete(Integer.parseInt(req.getParameter("id")));
		if (productDeleted != null) {
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}

	private void doGetEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Product product = productService.findById(Integer.parseInt(req.getParameter("id")));
		List<Category> categories = categoryService.findAll();
		req.setAttribute("product", product);
		req.setAttribute("categories", categories);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/product-edit.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetOverView(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> products = productService.findAll();
		req.setAttribute("products", products);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/product-overview.jsp");
		requestDispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String action = req.getParameter("action");
			switch (action) {
			case "add":
				doPostAdd(req, resp);
				break;

			case "edit":
				doPostEdit(req, resp);
				break;

			default:
				break;
			}
		}
	}

	private void doPostAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		Product product = new Product();
		product.setTitle(req.getParameter("title"));
		product.setPrice(Double.parseDouble(req.getParameter("price")));
		Category category = categoryService.findById(Integer.parseInt(req.getParameter("categoryId")));
		product.setCategory(category);
		product.setDescription(req.getParameter("description"));
		product.setImage(req.getParameter("srcImage"));
		Product productReturn = productService.create(product);
		if (productReturn != null) {
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}

	private void doPostEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		Product product = productService.findById(Integer.parseInt(req.getParameter("id")));
		product.setTitle(req.getParameter("title"));
		product.setPrice(Double.parseDouble(req.getParameter("price")));
		Category category = categoryService.findById(Integer.parseInt(req.getParameter("categoryId")));
		product.setCategory(category);
		product.setDescription(req.getParameter("description"));
		product.setImage(req.getParameter("srcImage"));
		Product productReturn = productService.update(product);
		if (productReturn != null) {
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}
}
