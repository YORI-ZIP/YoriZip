package com.yorizip.myapp.community.impl;

import java.io.File;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.yorizip.myapp.community.board.SqlSessionFactoryBean;
import com.yorizip.myapp.community.board.CommunityVO;

@Repository
public class CommunityDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;	
	
	public void insert(CommunityVO vo) {
		
		System.out.println("===> Mybatis로 insertBoard() 기능 처리");
		mybatis.insert("communityDAO.insert", vo);
		
	}

	public void update(CommunityVO vo) {
		System.out.println("===> Mybatis로 updateBoard() 기능 처리");
		mybatis.update("communityDAO.update", vo);
	}

	public void delete(CommunityVO vo) {
		System.out.println("===> Mybatis로 deleteBoard() 기능 처리");
		mybatis.delete("communityDAO.delete", vo);
	}

	public CommunityVO community_view(CommunityVO vo) {
		System.out.println("===> Mybatis로 community_view() 기능 처리");
		return (CommunityVO) mybatis.selectOne("communityDAO.community_view", vo);
	}

	public List<CommunityVO> communityList(CommunityVO vo) {
		System.out.println("===> Mybatis로 communityList() 기능 처리");
		return mybatis.selectList("communityDAO.communityList", vo);
	}
	
	
}
