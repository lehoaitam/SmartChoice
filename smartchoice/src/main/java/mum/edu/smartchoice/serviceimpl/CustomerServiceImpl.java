package mum.edu.smartchoice.serviceimpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.smartchoice.dao.CredentialsDao;
import mum.edu.smartchoice.dao.CustomerDao;
import mum.edu.smartchoice.domain.Credentials;
import mum.edu.smartchoice.domain.Customer;
import mum.edu.smartchoice.service.CustomerService;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao customerdao;
	
	@Autowired
	CredentialsDao credentialsdao;
	
	public Customer fetchCustomer(String username) {
		Credentials credentials = credentialsdao.getCredentialsByUsername(username);
		return customerdao.getCustomerByCredentials(credentials);

	}

	public void saveCustomer(Customer customer) {
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(customer.getCredentials().getPassword());
		customer.getCredentials().setPassword(encodedPassword);
		customerdao.save(customer);
	}

}
