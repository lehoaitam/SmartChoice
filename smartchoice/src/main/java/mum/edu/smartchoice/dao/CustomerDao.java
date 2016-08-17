package mum.edu.smartchoice.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mum.edu.smartchoice.domain.Credentials;
import mum.edu.smartchoice.domain.Customer;

@Repository
public interface CustomerDao extends JpaRepository<Customer, Long> {
	
	public Customer getCustomerByCredentials(Credentials credentials);

}
