package mum.edu.smartchoice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import mum.edu.smartchoice.domain.Cart;
import mum.edu.smartchoice.domain.LineItem;
import mum.edu.smartchoice.service.CartService;
import mum.edu.smartchoice.service.ProductService;

@Controller
@RequestMapping("/carts")
@SessionAttributes({ "cart", "customer", "loginFromCheckout" })
public class CartController {

	@Autowired
	ProductService productservice;

	@Autowired
	CartService cartservice;

	@RequestMapping(value = "/add/{productcode}")
	public String addToCart(@PathVariable String productcode, @ModelAttribute("cart") Cart cart) {
		cartservice.addToCart(productcode, cart);
		return "redirect:/";

	}

	@RequestMapping("/remove/{productcode}")
	public String removeFromCart(@PathVariable String productcode, @ModelAttribute("cart") Cart cart) {
		cartservice.removeFromCart(productcode, cart);
		return "redirect:/";

	}

	@RequestMapping("/checkout")
	public String checkoutToPayment(@ModelAttribute("cart") Cart shoppingcart, Model model) {
		if (!model.containsAttribute("customer")) {
			model.addAttribute("loginFromCheckout", true);
			return "login";
		}
		return "checkout";
	}

	@RequestMapping(value = "/checkoutStep2")
	public String checkoutStep2() {
		return "checkoutStep2";
	}

	@RequestMapping(value = "/homePageAfterOrder")
	public String homepageafterorder(Model model) {
		model.addAttribute("cart", new Cart());
		return "redirect:/";
	}

}
