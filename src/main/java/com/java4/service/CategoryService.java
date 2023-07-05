package com.java4.service;

import java.util.List;

import com.java4.entity.Category;

public interface CategoryService {

	Category findById(Integer id);

	List<Category> findAll();

	Category create(Category entity);

	Category update(Category entity);

	Category delete(Integer id);
}
