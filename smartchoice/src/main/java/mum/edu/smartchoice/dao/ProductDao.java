package mum.edu.smartchoice.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mum.edu.smartchoice.domain.Category;
import mum.edu.smartchoice.domain.Product;

@Repository
public interface ProductDao extends JpaRepository<Product, Long> 
{
	
	public Product getProductByProductcode(String productcode);

	public List<Product> getProductByCategory(Category category);

}
