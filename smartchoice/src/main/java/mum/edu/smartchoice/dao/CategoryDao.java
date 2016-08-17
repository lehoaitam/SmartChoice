package mum.edu.smartchoice.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import mum.edu.smartchoice.domain.Category;
@Repository
public interface CategoryDao extends JpaRepository<Category, Long>{

}
