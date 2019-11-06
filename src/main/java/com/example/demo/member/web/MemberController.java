package com.example.demo.member.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.member.service.Member;
import com.example.demo.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/memberList")
	public String memberList(Model model) throws Exception{
		
		List<Member> memberList = memberService.getMemberList();
		
		model.addAttribute("memberList", memberList);
		
		return "member/memberList";
	}
	
	@RequestMapping(value="/memberView", method=RequestMethod.GET)
	public String memberView(
			@RequestParam(value="mem_id", required=true) String mem_id
			, Model model) throws Exception{
		
		Member member = memberService.getMember(mem_id);
		
		model.addAttribute("member", member);
		
		return "member/memberView";
	}
	
	@RequestMapping("/memberForm")
	public String memberForm() throws Exception{
		
		return "member/memberForm";
	}
	
	@RequestMapping("/memberInsert")
	public String memberInsert(
			Member member
			) throws Exception{
		
		member.setReg_user(member.getMem_id());
		
		int updCnt = memberService.insertMember(member);
		
		if(updCnt > 0) {
			System.out.println("정상 등록 되었습니다.");
		} else {
			System.out.println("등록 실패했습니다.");
		}
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping("/memberEdit")
	public String memberEdit(String mem_id, Model model) throws Exception{
		
		Member member = memberService.getMember(mem_id);
		
		model.addAttribute("member", member);
		
		return "member/memberEdit";
	}
	
	@RequestMapping("/memberUpdate")
	public String memberUpdate(
			@ModelAttribute(name="member") Member member
			//, Model model
			) throws Exception{
		
		member.setUpd_user(member.getMem_id());
		boolean isError = false;
		try {
			int updCnt = memberService.updateMember(member);
			
			if(updCnt > 0) {
				System.out.println("정상 수정되었습니다.");
				return "redirect:/member/memberView?mem_id=" + member.getMem_id();
			} else {
				isError = true;
			}
			
		}catch(Exception e) {
			isError = true;
		}
		
		//model.addAttribute("member", member);
		
		return "member/memberEdit";
		
	}
	
	@RequestMapping("/memberDelete")
	public String memberDelete(String mem_id) throws Exception{
		
		int updCnt = memberService.deleteMember(mem_id);
		
		return "redirect:/member/memberList";
	}
}










