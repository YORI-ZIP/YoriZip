package com.yorizip.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yorizip.myapp.community.board.communityService;
import com.yorizip.myapp.community.board.communityVO;

@Controller
@SessionAttributes("community")
public class BoardController {
	
	@Autowired
	private communityService communityservice;
	
	//글 삽입
	@RequestMapping(value="/insert.do")
	public String insert(communityVO vo) throws IllegalStateException {
		
		communityservice.insert(vo);
		return "redirect:/myapp/communityList.jsp";
	}
	
	//글 수정
	@RequestMapping("/update.do")
	public String update(@ModelAttribute("community") communityVO vo) {
		
		System.out.println(vo.getCom_num());
		System.out.println(vo.getCom_title());
		System.out.println(vo.getCom_content());
		System.out.println(vo.getCom_image());
	
		communityservice.update(vo);
		return "redirect:communityList.do";
	}
	
	// 글 삭제
	@RequestMapping("/delete.do")
	public String deleteBoard(communityVO vo) {

		communityservice.delete(vo);
		return "redirect:communityList.do";
	}
		
	// 글 상세 조회
	@RequestMapping("/community_view.do")
	public String community_view(communityVO vo, Model model) {
			
		model.addAttribute("community", communityservice.community_view(vo));     
		return "view.jsp";	
	}

//	// 글 목록 검색
	@RequestMapping("/communityList.do")
	public String getBoardList(communityVO vo, Model model) {
			
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
