package mum.edu.smartchoice.service;

import mum.edu.smartchoice.domain.Cart;
import mum.edu.smartchoice.domain.LineItem;

public interface CartService {
	public LineItem addToCart(String productcode, Cart cart);

	public void removeFromCart(String productcode, Cart cart);
}
