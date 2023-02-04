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
	
	//아이디 찾기
	public String find_id(MemberVO vo);
	
	//비밀번호찾기 - 이메일조회
	public String email_Ck(UsersVO vo);
	
	//비밀번호 재설정
	public int resetPw(UsersVO vo);
}