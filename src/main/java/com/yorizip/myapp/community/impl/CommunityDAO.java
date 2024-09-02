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
		
		System.out.println("===> Mybatis�� insertBoard() ��� ó��");
		mybatis.insert("communityDAO.insert", vo);
		
	}

	public void update(CommunityVO vo) {
		System.out.println("===> Mybatis�� updateBoard() ��� ó��");
		mybatis.update("communityDAO.update", vo);
	}

	public void delete(CommunityVO vo) {
		System.out.println("===> Mybatis�� deleteBoard() ��� ó��");
		mybatis.delete("communityDAO.delete", vo);
	}

	public CommunityVO community_view(CommunityVO vo) {
		System.out.println("===> Mybatis�� community_view() ��� ó��");
		return (CommunityVO) mybatis.selectOne("communityDAO.community_view", vo);
	}

	public List<CommunityVO> communityList(CommunityVO vo) {
		System.out.println("===> Mybatis�� communityList() ��� ó��");
		return mybatis.selectList("communityDAO.communityList", vo);
	}
	
	
}
