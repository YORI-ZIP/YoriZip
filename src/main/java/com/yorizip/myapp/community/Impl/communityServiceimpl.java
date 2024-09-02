package com.yorizip.myapp.community.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yorizip.myapp.community.board.communityService;
import com.yorizip.myapp.community.board.communityVO;

@Service("communityService")
public class communityServiceimpl implements communityService{
	
	@Autowired
	private communityDAO communityDAO;
	
	public communityServiceimpl() {
		
	}

	@Override
	public void insert(communityVO vo) {
		
		communityDAO.insert(vo);
		
	}

	@Override
	public void update(communityVO vo) {

		communityDAO.update(vo);
	
	}

	@Override
	public void delete(communityVO vo) {
		
		communityDAO.delete(vo);
		
	}

	@Override
	public communityVO community_view(communityVO vo) {
		
		return communityDAO.community_view(vo);
	}

	@Override
	public List<communityVO> communityList(communityVO vo) {
		
		return communityDAO.communityList(vo);
	}
	
	
	
}
