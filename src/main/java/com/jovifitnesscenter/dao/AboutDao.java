package com.jovifitnesscenter.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jovifitnesscenter.model.AboutPage;

public interface AboutDao extends JpaRepository<AboutPage, Integer> {
	
	@Override
	public <S extends AboutPage> S save(S entity);
	
	@Override
	public List<AboutPage> findAll();
	
	@Override
	public void deleteById(Integer id);
	
	
	}
