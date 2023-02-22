package com.tp.service;

import java.util.List;

import com.tp.domain.Criteria;
import com.tp.domain.ReplyVO;

public interface ReplyService {
	public int register(ReplyVO vo); // 댓글 등록
	
	public ReplyVO read(Long rno); // 댓글 조회
	
	public int update(ReplyVO vo); // 댓글 수정
	
	public int delete(Long rno); // 댓글 삭제
	
	public List<ReplyVO> getList(Criteria cri, Long bno); // 특정 게시물의 댓글 목록 확인
}
