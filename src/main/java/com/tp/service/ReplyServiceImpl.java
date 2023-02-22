package com.tp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tp.domain.Criteria;
import com.tp.domain.ReplyVO;
import com.tp.mapper.BoardMapper;
import com.tp.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements ReplyService {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	// 댓글 등록
	@Transactional
	@Override
	public int register(ReplyVO vo) {
		
		log.info("register......." + vo);
		
//		boardMapper.updateReplyCnt(vo.getBno(), 1);
		
		return mapper.insert(vo);
	}
	
	// 댓글 조회
	@Override
	public ReplyVO read(Long rno) {
		
		log.info("read......." + rno);
		
		return mapper.read(rno);
	}
	
	// 댓글 수정
	@Override
	public int update(ReplyVO vo) {
		
		log.info("update......" + vo);
		
		return mapper.update(vo);
	}

	// 댓글 삭제
	@Transactional
	@Override
	public int delete(Long rno) {
		
		log.info("delete......" + rno);
//		ReplyVO vo = mapper.read(rno);
//		boardMapper.updateReplyCnt(vo.getBno(), -1);
		
		return mapper.delete(rno);
	}

	// 특정 게시물의 댓글 목록 확인
	@Override
	public List<ReplyVO> getList(Criteria cri, Long bno) {
		
		log.info("get Reply List of a Board " + bno);
		
		return mapper.getListWithPaging(cri, bno);
	}




}
