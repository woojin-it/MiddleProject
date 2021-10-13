package com.d.mp.cs.faq;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.d.mp.board.util.boardPager;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	private String NAMESPACE="com.d.mp.cs.faq.FaqDAO.";
	
	//list 목록
	public List<FaqDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	//글 추가
	public int setInsert(FaqDTO faqDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", faqDTO);
	}
	
	
	public Long getCount(boardPager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
	
	public List<FaqDTO> getTypeList(FaqDTO faqDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getTypeList", faqDTO);
	}
	
	
}