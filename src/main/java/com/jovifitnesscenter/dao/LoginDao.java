package com.jovifitnesscenter.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.jovifitnesscenter.model.LoginPage;

public interface LoginDao extends JpaRepository<LoginPage, Integer> {
	
	@Override
	public long count();
	
	@Modifying
	@Transactional
	@Query(value = "insert into adminlogin(username,password) values(:username,:password)",nativeQuery = true)
	public int insert(@Param("username")String username,@Param("password")String password);
	
	@Query(value = "from LoginPage where username=:username and password=:password")
	public List<LoginPage> read(@Param("username")String username,@Param("password")String password);
	
	@Modifying
	@Transactional
	@Query(value = "update adminlogin set password=:cpassword where sn=1",nativeQuery = true)
	public int addNewPassword(@Param("cpassword")String cpassword);
}
