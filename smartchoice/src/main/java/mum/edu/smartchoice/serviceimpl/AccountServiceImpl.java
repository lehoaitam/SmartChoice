package mum.edu.smartchoice.serviceimpl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import mum.edu.smartchoice.dao.AccountDao;
import mum.edu.smartchoice.domain.Account;
import mum.edu.smartchoice.domain.Cart;
import mum.edu.smartchoice.domain.Customer;
import mum.edu.smartchoice.domain.LineItem;
import mum.edu.smartchoice.domain.Order;
import mum.edu.smartchoice.domain.OrderStatus;
import mum.edu.smartchoice.domain.Payment;
import mum.edu.smartchoice.domain.Product;
import mum.edu.smartchoice.service.AccountService;
import mum.edu.smartchoice.service.CustomerService;
import mum.edu.smartchoice.service.ProductService;

@Service
@Transactional
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountDao accountdao;
	@Autowired
	ProductService productservice;
	@Autowired
	CustomerService customerservice;

	public void saveAccount(Account account, Customer customer) {

		customer.setAccount(account);
		account.setCustomer(customer);
		account.setCustomer(customer);
		accountdao.save(account);
		customerservice.saveCustomer(customer);
	}

	public Order payANDorder(Payment payment, Customer customer, Cart cart) {
		Account account = accountdao.getAccountByCardNo(customer.getAccount().getCardNo());
		for (LineItem item : cart.getItems()) {
			Product product = productservice.getProduct(item.getProduct().getProductcode());
			product.setQuantity(product.getQuantity() - item.getQuanity());

		}

		payment.setTotal(cart.getTotalamout());
		payment.setAccount(account);

		Order order = new Order();
		order.setOrderstatus(OrderStatus.NEW);
		order.setShippingAdress(customer.getAddress());
		order.setPayment(payment);
		payment.setOrder(order);
		List<Payment> payments = new ArrayList<Payment>();
		payments.add(payment);
		account.setPayments(payments);
		List<Cart> carts = new ArrayList<Cart>();
		carts.add(cart);
		account.setCarts(carts);
		accountdao.save(account);
		return order;
	}

}
