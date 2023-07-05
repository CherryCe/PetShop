package com.java4.dao;

import java.util.List;

import com.java4.entity.Category;
import com.java4.entity.Product;

public interface ProductDao {

	Product findById(Integer id);
	
	List<Product> findByTitle(String title);
	
	List<Product> findByCategory(Category category);

	List<Product> findAll();

	List<Product> findAll(int pageNumber, int pageSize);

	Product create(Product entity);

	Product update(Product entity);

	Product delete(Product entity);
}
