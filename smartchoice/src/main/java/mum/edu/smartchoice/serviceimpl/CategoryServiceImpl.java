package mum.edu.smartchoice.serviceimpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.smartchoice.dao.CategoryDao;
import mum.edu.smartchoice.domain.Category;
import mum.edu.smartchoice.service.CategoryService;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryDao categorydao;

	public void addCategory(Category category) {
		categorydao.save(category);

	}

	public List<Category> getCategory() {
		return (List<Category>)categorydao.findAll();

	}

	public void deleteCategory(Long catId) {
		categorydao.delete(catId);

		
	}

	public void editCategory( Category c) {
		Category category= categorydao.findOne(c.getId());
		category.setType(c.getType());

		}

	public Category getUniqueCategory(Long catId) {
		return categorydao.findOne(catId);
	}

	

}
