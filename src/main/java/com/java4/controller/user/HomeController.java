package com.java4.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java4.entity.Category;
import com.java4.entity.Product;
import com.java4.service.CategoryService;
import com.java4.service.ProductService;
import com.java4.service.impl.CategoryServiceImpl;
import com.java4.service.impl.ProductServiceImpl;

@WebServlet(urlPatterns = { "/about", "/blog", "/contact", "/detail", "/index", "/price", "/product", "/service",
		"/team", "/testimonial" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = 8509554900990908773L;
	private static final int PRODUCT_MAX_PAGE_SIZE = 4;
	private ProductService productService = new ProductServiceImpl();
	private CategoryService categoryService = new CategoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch (path) {
		case "/about":
			doGetAbout(req, resp);
			break;

		case "/blog":
			doGetBlog(req, resp);
			break;

		case "/contact":
			doGetContact(req, resp);
			break;

		case "/detail":
			doGetDetail(req, resp);
			break;

		case "/index":
			doGetIndex(req, resp);
			break;

		case "/price":
			doGetPrice(req, resp);
			break;

		case "/product":
			doGetProduct(req, resp);
			break;

		case "/service":
			doGetService(req, resp);
			break;

		case "/team":
			doGetTeam(req, resp);
			break;

		case "/testimonial":
			doGetTestimonial(req, resp);
			break;

		default:
			break;
		}
	}

	private void doGetAbout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/about.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetBlog(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/blog.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetContact(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/contact.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/detail.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetIndex(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> products = productService.findAll();
		req.setAttribute("products", products);
		req.setAttribute("pageIndex", true);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/index.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetPrice(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/price.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> countProduct = productService.findAll();
		List<Category> categories = categoryService.findAll();
		int maxPage = (int) Math.ceil(countProduct.size() / (double) PRODUCT_MAX_PAGE_SIZE);
		req.setAttribute("maxPage", maxPage);
		req.setAttribute("categories", categories);
		List<Product> products;

		String pageNumber = req.getParameter("page");
		if (pageNumber == null || Integer.parseInt(pageNumber) > maxPage) {
			products = productService.findAll(1, PRODUCT_MAX_PAGE_SIZE);
			req.setAttribute("currentPage", 1);
		} else {
			products = productService.findAll(Integer.parseInt(pageNumber), PRODUCT_MAX_PAGE_SIZE);
			req.setAttribute("currentPage", Integer.parseInt(pageNumber));
		}

		String keyword = req.getParameter("keyword");
		if (keyword != null) {
			req.setAttribute("pageNumber", false);
			products = productService.findByTitle(keyword);
		}

		String sort = req.getParameter("sort");
		if (sort != null) {
			req.setAttribute("pageNumber", false);
			Category category = categoryService.findById(Integer.parseInt(sort));
			products = productService.findByCategory(category);
		}

		req.setAttribute("products", products);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/product.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetService(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/service.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetTeam(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/team.jsp");
		requestDispatcher.forward(req, resp);
	}

	private void doGetTestimonial(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/testimonial.jsp");
		requestDispatcher.forward(req, resp);
	}
}
