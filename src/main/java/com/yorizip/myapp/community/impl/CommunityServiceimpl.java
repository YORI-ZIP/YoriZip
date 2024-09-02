package com.yorizip.myapp.community.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yorizip.myapp.community.board.CommunityService;
import com.yorizip.myapp.community.board.CommunityVO;

@Service
public class CommunityServiceimpl implements CommunityService{
	
	@Autowired
	private CommunityDAO communityDAO;
	
	public CommunityServiceimpl() {
		
	}

	@Override
	public void insert(CommunityVO vo) {
		
		communityDAO.insert(vo);
		
	}

	@Override
	public void update(CommunityVO vo) {

		communityDAO.update(vo);
	
	}

	@Override
	public void delete(CommunityVO vo) {
		
		communityDAO.delete(vo);
		
	}

	@Override
	public CommunityVO community_view(CommunityVO vo) {
		
		return communityDAO.community_view(vo);
	}

	@Override
	public List<CommunityVO> communityList(CommunityVO vo) {
		
		return communityDAO.communityList(vo);
	}
	
	
	
}
