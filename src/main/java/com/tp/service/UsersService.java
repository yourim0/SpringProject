package com.tp.service;


import com.tp.domain.MemberVO;
import com.tp.domain.UsersVO;


public interface UsersService {
	
	//회원가입
	public void UserJoin(UsersVO vo) throws Exception;
	
	//사번인증
	public MemberVO memberLogin(MemberVO member) throws Exception;
	
	//로그인
	public UsersVO Login(UsersVO vo) throws Exception;

	//아이디 중복체크
	public int idCheck(String memberId) throws Exception;
	


}
