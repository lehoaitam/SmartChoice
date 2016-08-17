package mum.edu.smartchoice.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mum.edu.smartchoice.domain.Account;

@Repository
public interface AccountDao extends JpaRepository<Account, Long> {
	public Account getAccountByCardNo(String cardNo);

}
