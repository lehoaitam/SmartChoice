package mum.edu.smartchoice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import mum.edu.smartchoice.domain.Cart;
import mum.edu.smartchoice.domain.Category;
import mum.edu.smartchoice.domain.Customer;
import mum.edu.smartchoice.domain.Product;
import mum.edu.smartchoice.service.CategoryService;
import mum.edu.smartchoice.service.CustomerService;
import mum.edu.smartchoice.service.ProductService;

@Controller
@SessionAttributes({ "customer", "cart", "loginFromCheckout" })
public class LoginController {

	@Autowired
	ProductService productservice;
	@Autowired
	CustomerService customerservice;

	@Autowired
	CategoryService categoryservice;

	@RequestMapping("/")
	public String homePage(Model model) {
		if (!model.containsAttribute("cart")) {
			model.addAttribute("cart", new Cart());
		}
		return "home";

	}

	@RequestMapping("/loginsuccess")
	public String loginsuccess(@ModelAttribute("customer") String username, Model model) {
		Customer customer = customerservice.fetchCustomer(username);

		if (customer.getCredentials().getRole().equals("ROLE_ADMIN")) {
			return "redirect:admin/addCategory";
		}
		model.addAttribute(customer);
		if (model.containsAttribute("loginFromCheckout")) {

			return "checkout";
		}

		return "redirect:/";

	}

	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public String loginerror(Model model) {
		model.addAttribute("error", "true");
		return "login";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}

	@RequestMapping(value = "/{catId}", method = RequestMethod.GET)
	public String listCategory(@PathVariable("catId") Long catId, Model model) {
		List<Product> product = productservice.getProductsById(catId);
		model.addAttribute("products", product);
		return "home";

	}

	@ModelAttribute("products")
	public List<Product> getAllproducts() {
		return productservice.getAllProducts();
	}

	@ModelAttribute("categories")
	public List<Category> getAllcategory() {
		return categoryservice.getCategory();
	}

}
