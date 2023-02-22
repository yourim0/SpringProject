package com.tp.service;

import java.util.List;

import com.tp.domain.BoardVO;
import com.tp.domain.Criteria;
import com.tp.domain.ReplyVO;

public interface QnaBoardService {

	public List<BoardVO> getList(BoardVO board);
	
	public List<BoardVO> getCategoryList(BoardVO board);
	
	public void register(BoardVO board);
	
	public BoardVO read(Long bno);
	
	public boolean update(BoardVO board);
	
	public boolean delete(Long bno);

	public int getListCount(BoardVO board);
	
	// 전체 데이터 갯수 가져오기
	public int getTotal(Criteria cri);
	
	public ReplyVO getReply(Long bno);
}
