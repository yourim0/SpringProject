package com.tp.mapper;

import org.apache.ibatis.annotations.Insert;

import com.tp.domain.MemberVO;
import com.tp.domain.UsersVO;

public interface UsersMapper {
	
	//회원가입
	public void UserJoin(UsersVO vo);
	
	//사번체크
	public MemberVO MemberLogin(MemberVO member);
	
	//로그인
	public UsersVO Login(UsersVO vo);
	
	//중복체크
	public int idCheck(String memberId);
}