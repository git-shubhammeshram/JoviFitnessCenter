package com.jovifitnesscenter.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jovifitnesscenter.model.ServicePage;

public interface SerivesDao extends JpaRepository<ServicePage, Integer>{
	@Override
	public <S extends ServicePage> S save(S entity);
	
	@Override
	public void deleteById(Integer id);
}
