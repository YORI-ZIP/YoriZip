package com.yorizip.myapp.community.Impl;

import java.io.File;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.yorizip.myapp.community.board.SqlSessionFactoryBean;
import com.yorizip.myapp.community.board.communityVO;

@Repository
public class communityDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;	
	
	public void insert(communityVO vo) {
		
		System.out.println("===> Mybatis�� insertBoard() ��� ó��");
		mybatis.insert("communityDAO.insert", vo);
		
	}

	public void update(communityVO vo) {
		System.out.println("===> Mybatis�� updateBoard() ��� ó��");
		mybatis.update("communityDAO.update", vo);
	}

	public void delete(communityVO vo) {
		System.out.println("===> Mybatis�� deleteBoard() ��� ó��");
		mybatis.delete("communityDAO.delete", vo);
	}

	public communityVO community_view(communityVO vo) {
		System.out.println("===> Mybatis�� community_view() ��� ó��");
		return (communityVO) mybatis.selectOne("communityDAO.community_view", vo);
	}

	public List<communityVO> communityList(communityVO vo) {
		System.out.println("===> Mybatis�� communityList() ��� ó��");
		return mybatis.selectList("communityDAO.communityList", vo);
	}
	
	
}
