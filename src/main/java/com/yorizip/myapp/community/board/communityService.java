package com.yorizip.myapp.community.board;

import java.util.List;

public interface communityService {
	// �۵��
	void insert(communityVO vo);
	
	// �� ����
	void update(communityVO vo);
	
	// �� ����
	void delete(communityVO vo);
	
	// �� �� ��ȸ
	communityVO community_view(communityVO vo);
	
	// �� ��� ��ȸ
	List<communityVO> communityList(communityVO vo);
}
