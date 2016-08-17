package mum.edu.smartchoice.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mum.edu.smartchoice.domain.Credentials;

@Repository
public interface CredentialsDao extends JpaRepository<Credentials, Long> {
	public Credentials getCredentialsByUsername(String username);
}
