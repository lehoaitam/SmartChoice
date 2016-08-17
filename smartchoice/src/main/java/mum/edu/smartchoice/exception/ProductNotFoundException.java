package mum.edu.smartchoice.exception;

public class ProductNotFoundException extends RuntimeException{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String productcode;

	public ProductNotFoundException(String productcode) {
		this.productcode = productcode;
	}
	
	public String getProductId() {
		return productcode;
	}
}
