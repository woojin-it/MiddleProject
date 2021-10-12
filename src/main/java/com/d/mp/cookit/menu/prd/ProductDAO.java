package com.d.mp.cookit.menu.prd;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Autowired
	private	SqlSession sqlSession;
	private final String NAMESPACE="com.d.mp.cookit.menu.prd.ProductDAO.";
	
	
	//상품 등록하기
	public int setInsert(ProductDTO productDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setInsert", productDTO);
	}
	
	//상품 날짜 테이블에 등록하기
	public int setInsertDate(ProductDTO productDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setInsertDate", productDTO);
	}
	
	//상품 파일 등록하기
	public int setFile(ProductFilesDTO productFilesDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setFile", productFilesDTO);
	}
	
	//상품 파일 가져오기
	public List<ProductFilesDTO> getFile(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getFile", productDTO);
	}
	
	//상품 전체 리스트 가져오기
	public List<ProductDTO> getPrdList(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getPrdList", productDTO);
	}	
	
	//특정 ID의 상품 하나 가져오기
	public ProductDTO getPrdOne(ProductDTO productDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getPrdOne", productDTO);
	}
	
	//특정 id 상품의 주문가능 일자 가져오기
	public List<ProductDTO> getDate(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getDate", productDTO);
	}
	
	//특정 ID의 상품 하나 삭제하기
	public int deletePrdOne(ProductDTO productDTO) throws Exception{
		return sqlSession.delete(NAMESPACE + "deletePrdOne", productDTO);
	}
}