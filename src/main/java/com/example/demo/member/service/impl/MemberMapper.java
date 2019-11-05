package com.example.demo.member.service.impl;

import java.util.List;

import com.example.demo.member.service.Member;

public interface MemberMapper {
	
	// CRUD	
	public List<Member> selectMemberList() throws Exception;
	
	public Member selectMember(String mem_id) throws Exception;

	public int insertMember(Member member) throws Exception;
	
	public int updateMember(Member member) throws Exception;
	
	public int deleteMember(String mem_id) throws Exception;
}
