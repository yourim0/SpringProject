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
	
	//아이디 찾기
	public String findid (MemberVO vo) throws Exception;

	//비밀번호찾기 - 이메일조회
	public String email_Ck(UsersVO vo) throws Exception;

	//비밀번호 재설정
	public int resetPw(UsersVO vo) throws Exception;
	
	//마이페이지 비밀번호
	public String mypage_Pw(String id) throws Exception;
	
	//마이페이지 회사 정보조회
	public MemberVO mypage_info(String empno) throws Exception;

	//마이페이지 
	public int mypage_update_email(UsersVO vo) throws Exception;
	
	//마이페이지 휴대폰번호 수정
	public int mypage_update_phoneNum(UsersVO vo) throws Exception;

}
