package mum.edu.smartchoice.service;

import mum.edu.smartchoice.domain.Account;
import mum.edu.smartchoice.domain.Cart;
import mum.edu.smartchoice.domain.Customer;
import mum.edu.smartchoice.domain.Order;
import mum.edu.smartchoice.domain.Payment;

public interface AccountService {
	public void saveAccount(Account account, Customer customer);

	public Order payANDorder(Payment payment, Customer customer, Cart cart);

}
