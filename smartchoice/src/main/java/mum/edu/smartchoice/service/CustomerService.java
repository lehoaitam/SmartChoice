package mum.edu.smartchoice.service;

import mum.edu.smartchoice.domain.Customer;

public interface CustomerService {

	public Customer fetchCustomer(String username);

	public void saveCustomer(Customer customer);

}
