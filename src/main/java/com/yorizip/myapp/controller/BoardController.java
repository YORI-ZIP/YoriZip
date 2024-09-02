package com.yorizip.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yorizip.myapp.community.board.CommunityService;
import com.yorizip.myapp.community.board.CommunityVO;

//@Controller
@SessionAttributes("community")
public class BoardController {
	
	@Autowired
	private CommunityService communityservice;
	
	//�� ����
	@RequestMapping(value="/insert.do")
	public String insert(CommunityVO vo) throws IllegalStateException {
		
		communityservice.insert(vo);
		return "redirect:/myapp/communityList.jsp";
	}
	
	//�� ����
	@RequestMapping("/update.do")
	public String update(@ModelAttribute("community") CommunityVO vo) {
		
		System.out.println(vo.getCom_num());
		System.out.println(vo.getCom_title());
		System.out.println(vo.getCom_content());
		System.out.println(vo.getCom_image());
	
		communityservice.update(vo);
		return "redirect:communityList.do";
	}
	
	// �� ����
	@RequestMapping("/delete.do")
	public String deleteBoard(CommunityVO vo) {

		communityservice.delete(vo);
		return "redirect:communityList.do";
	}
		
	// �� �� ��ȸ
	@RequestMapping("/community_view.do")
	public String community_view(CommunityVO vo, Model model) {
			
		model.addAttribute("community", communityservice.community_view(vo));     
		return "view.jsp";	
	}

//	// �� ��� �˻�
	@RequestMapping("/communityList.do")
	public String getBoardList(CommunityVO vo, Model model) {
			
//		if(vo.getSearchCondition() == null) {
//			vo.setSearchCondition("TITLE");
//		}
//		
//		if(vo.getSearchKeyword() == null) {
		
//			vo.setSearchKeyword("");
//		}
//			
		model.addAttribute("communityList", communityservice.communityList(vo));
		return "communitylist.jsp"; 	
	}
	
	
}
