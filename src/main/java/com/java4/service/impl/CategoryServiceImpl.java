package com.java4.service.impl;

import java.util.List;

import com.java4.dao.CategoryDao;
import com.java4.dao.impl.CategoryDaoImpl;
import com.java4.entity.Category;
import com.java4.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

	private CategoryDao dao;

	public CategoryServiceImpl() {
		dao = new CategoryDaoImpl();
	}

	@Override
	public Category findById(Integer id) {
		return dao.findById(id);
	}

	@Override
	public List<Category> findAll() {
		return dao.findAll();
	}

	@Override
	public Category create(Category entity) {
		return dao.create(entity);
	}

	@Override
	public Category update(Category entity) {
		return dao.update(entity);
	}

	@Override
	public Category delete(Integer id) {
		Category entity = findById(id);
		return dao.delete(entity);
	}
}
