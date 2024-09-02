package com.yorizip.myapp.community.board;

import java.util.List;

public interface CommunityService {
	// �۵��
	void insert(CommunityVO vo);
		
	// �� ����
	void update(CommunityVO vo);
		
	// �� ����
	void delete(CommunityVO vo);
		
	// �� �� ��ȸ
	CommunityVO community_view(CommunityVO vo);
		
	// �� ��� ��ȸ
	List<CommunityVO> communityList(CommunityVO vo);
}
