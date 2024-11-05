package com.jovifitnesscenter.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jovifitnesscenter.model.MessagePage;

public interface MessageDao extends JpaRepository<MessagePage, Integer> {
	
	@Override
	public <S extends MessagePage> S save(S entity);
	
	@Override
	public void deleteById(Integer id);
	
	@Query(value = "select count(*) as count from message",nativeQuery = true)
	public int countMessage();
	
}
