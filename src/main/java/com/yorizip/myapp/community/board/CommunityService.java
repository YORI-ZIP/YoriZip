package com.yorizip.myapp.community.board;

import java.util.List;

public interface CommunityService {
	// 글등록
	void insert(CommunityVO vo);
		
	// 글 수정
	void update(CommunityVO vo);
		
	// 글 삭제
	void delete(CommunityVO vo);
		
	// 글 상세 조회
	CommunityVO community_view(CommunityVO vo);
		
	// 글 목록 조회
	List<CommunityVO> communityList(CommunityVO vo);
}
