package mum.edu.smartchoice.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import mum.edu.smartchoice.domain.Product;
import mum.edu.smartchoice.exception.ProductNotFoundException;
import mum.edu.smartchoice.service.ProductService;

public class ProductcodeValidator implements ConstraintValidator<Productcode, String>{
	@Autowired
	private ProductService productService;
	
	@Override
	public void initialize(Productcode arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isValid(String productcode, ConstraintValidatorContext cnxt) {
		Product product;
		try {
			product = productService.getProduct(productcode);
			
		} catch (Exception e ) {
			return true;
		}
		
		if(product!= null)
		{
			return false;
		}
		
		return true;
	
	}

}
