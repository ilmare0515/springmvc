package com.example.demo.member.service;

import java.util.List;

public interface MemberService {
	
	public List<Member> getMemberList() throws Exception;
	
	public Member getMember(String mem_id) throws Exception;

	public int insertMember(Member member) throws Exception;
	
	public int updateMember(Member member) throws Exception;
	
	public int deleteMember(String mem_id) throws Exception;

}
