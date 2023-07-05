package com.java4.service;

import java.util.List;

import com.java4.entity.Category;
import com.java4.entity.Product;

public interface ProductService {

	Product findById(Integer id);

	List<Product> findByTitle(String title);

	List<Product> findByCategory(Category category);

	List<Product> findAll();

	List<Product> findAll(int pageNumber, int pageSize);

	Product create(Product entity);

	Product update(Product entity);

	Product delete(Integer id);
}
