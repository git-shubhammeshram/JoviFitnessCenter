package com.jovifitnesscenter.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jovifitnesscenter.model.MembershipInquiryPage;

public interface MembershipInquiryDao extends JpaRepository<MembershipInquiryPage, Integer> {

	@Override
	public <S extends MembershipInquiryPage> S save(S entity);
	
	@Override
	public void deleteById(Integer id);
	
	

	
	@Query(value = "select count(*) as count from membership_inquiry",nativeQuery = true)
	public int countInquiry();
	
}
