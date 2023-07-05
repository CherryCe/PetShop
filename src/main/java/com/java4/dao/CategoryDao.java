package com.java4.dao;

import java.util.List;

import com.java4.entity.Category;;

public interface CategoryDao {

	Category findById(Integer id);

	List<Category> findAll();

	Category create(Category entity);

	Category update(Category entity);

	Category delete(Category entity);
}
