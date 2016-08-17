package mum.edu.smartchoice.service;

import java.util.List;

import mum.edu.smartchoice.domain.Product;

public interface ProductService {
	public List<Product> getAllProducts();
	
	public void addProduct(Product product);
	
	public void deleteProduct(Long productId);
	public void editProduct(Product product);
	public Product getUniqueProduct(Long productId);
	public List<Product> getProductsById(Long id);

	public Product getProduct(String productcode);

	
}
