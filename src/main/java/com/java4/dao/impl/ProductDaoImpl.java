package com.java4.dao.impl;

import java.util.List;

import com.java4.dao.AbstractDao;
import com.java4.dao.ProductDao;
import com.java4.entity.Category;
import com.java4.entity.Product;

public class ProductDaoImpl extends AbstractDao<Product> implements ProductDao {

	@Override
	public Product findById(Integer id) {
		return super.findById(Product.class, id);
	}

	@Override
	public List<Product> findByTitle(String title) {
		String sql = "SELECT o FROM Product o WHERE o.title LIKE ?0 AND isActive = 1";
		return super.findMany(Product.class, sql, "%" + title + "%");
	}

	@Override
	public List<Product> findByCategory(Category category) {
		String sql = "SELECT o FROM Product o WHERE o.category = ?0 AND isActive = 1";
		return super.findMany(Product.class, sql, category);
	}

	@Override
	public List<Product> findAll() {
		return super.findAll(Product.class, true);
	}

	@Override
	public List<Product> findAll(int pageNumber, int pageSize) {
		return super.findAll(Product.class, true, pageNumber, pageSize);
	}
}
