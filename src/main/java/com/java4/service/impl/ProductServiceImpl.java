package com.java4.service.impl;

import java.util.List;

import com.java4.dao.ProductDao;
import com.java4.dao.impl.ProductDaoImpl;
import com.java4.entity.Category;
import com.java4.entity.Product;
import com.java4.service.ProductService;

public class ProductServiceImpl implements ProductService {

	private ProductDao dao;

	public ProductServiceImpl() {
		dao = new ProductDaoImpl();
	}

	@Override
	public Product findById(Integer id) {
		return dao.findById(id);
	}

	@Override
	public List<Product> findByTitle(String title) {
		return dao.findByTitle(title);
	}

	@Override
	public List<Product> findByCategory(Category category) {
		return dao.findByCategory(category);
	}

	@Override
	public List<Product> findAll() {
		return dao.findAll();
	}

	@Override
	public List<Product> findAll(int pageNumber, int pageSize) {
		return dao.findAll(pageNumber, pageSize);
	}

	@Override
	public Product create(Product entity) {
		entity.setIsActive(Boolean.TRUE);
		return dao.create(entity);
	}

	@Override
	public Product update(Product entity) {
		return dao.update(entity);
	}

	@Override
	public Product delete(Integer id) {
		Product entity = findById(id);
		entity.setIsActive(Boolean.FALSE);
		return dao.update(entity);
	}
}
