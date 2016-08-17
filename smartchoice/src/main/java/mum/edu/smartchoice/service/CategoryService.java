package mum.edu.smartchoice.service;

import java.util.List;

import mum.edu.smartchoice.domain.Category;

public interface CategoryService {
	public void addCategory(Category category);
	public List<Category> getCategory();
	public void deleteCategory(Long catId);
	public void editCategory(Category category);
	public Category getUniqueCategory(Long catId);
	

}
