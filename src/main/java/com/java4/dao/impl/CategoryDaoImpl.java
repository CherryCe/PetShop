package com.java4.dao.impl;

import java.util.List;

import com.java4.dao.AbstractDao;
import com.java4.dao.CategoryDao;
import com.java4.entity.Category;

public class CategoryDaoImpl extends AbstractDao<Category> implements CategoryDao {

	@Override
	public Category findById(Integer id) {
		return super.findById(Category.class, id);
	}

	@Override
	public List<Category> findAll() {
		return super.findAll(Category.class, false);
	}
}
