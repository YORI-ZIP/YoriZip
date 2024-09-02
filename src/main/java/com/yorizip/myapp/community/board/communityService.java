package com.yorizip.myapp.community.board;

import java.util.List;

public interface communityService {
	// 글등록
	void insert(communityVO vo);
	
	// 글 수정
	void update(communityVO vo);
	
	// 글 삭제
	void delete(communityVO vo);
	
	// 글 상세 조회
	communityVO community_view(communityVO vo);
	
	// 글 목록 조회
	List<communityVO> communityList(communityVO vo);
}
