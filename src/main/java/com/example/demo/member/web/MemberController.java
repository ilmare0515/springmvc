package com.example.demo.member.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/memberList")
	public String memberList() throws Exception{
		
		return "member/memberList";
	}
	
	@RequestMapping("/memberView")
	public String memberView() throws Exception{
		
		return "member/memberView";
	}
	
	@RequestMapping("/memberForm")
	public String memberForm() throws Exception{
		
		return "member/memberForm";
	}
	
	@RequestMapping("/memberInsert")
	public String memberInsert() throws Exception{
		
		return "member/memberList";
	}
	
	@RequestMapping("/memberEdit")
	public String memberEdit() throws Exception{
		
		return "member/memberEdit";
	}
	
	@RequestMapping("/memberUpdate")
	public String memberUpdate() throws Exception{
		
		return "member/memberEdit";
	}
	
	@RequestMapping("/memberDelete")
	public String memberDelete() throws Exception{
		
		return "member/memberList";
	}
}










