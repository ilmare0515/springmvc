package com.example.demo.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.member.service.Member;
import com.example.demo.member.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper memberMapper;

	@Override
	public List<Member> getMemberList() throws Exception {
		// TODO Auto-generated method stub
		return memberMapper.selectMemberList();
	}

	@Override
	public Member getMember(String mem_id) throws Exception {
		// TODO Auto-generated method stub
		return memberMapper.selectMember(mem_id);
	}

	@Override
	public int insertMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return memberMapper.insertMember(member);
	}

	@Override
	public int updateMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return memberMapper.updateMember(member);
	}

	@Override
	public int deleteMember(String mem_id) throws Exception {
		// TODO Auto-generated method stub
		return memberMapper.deleteMember(mem_id);
	}	
}
