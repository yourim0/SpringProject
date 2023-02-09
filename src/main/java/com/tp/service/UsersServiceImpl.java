package com.tp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tp.domain.MemberVO;
import com.tp.domain.UsersVO;
import com.tp.mapper.UsersMapper;

@Service
public class UsersServiceImpl implements UsersService  {

	@Autowired(required=false)
	private UsersMapper mapper;
	
	// 비밀번호 해시함수
	BCryptPasswordEncoder pwEncoder = new BCryptPasswordEncoder();	
	
	@Override
	public void UserJoin(UsersVO vo) throws Exception {
		
	       String rawPw = "";            // 인코딩 전 비밀번호
	       String encodePw = "";        // 인코딩 후 비밀번호
	        
	       rawPw = vo.getPw();            // 비밀번호 데이터 얻음
	       encodePw = pwEncoder.encode(rawPw);        // 비밀번호 인코딩
	       vo.setPw(encodePw);            // 인코딩된 비밀번호 member객체에 다시 저장
	       
	       mapper.UserJoin(vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO member) throws Exception {
		return mapper.MemberLogin(member);
	}

	@Override
	public int idCheck(String memberId) throws Exception {
		return mapper.idCheck(memberId);
	}

	@Override
	public UsersVO Login(UsersVO vo) throws Exception {
		return mapper.Login(vo);
	}

	//아이디 찾기
	@Override
	public String findid(MemberVO vo) throws Exception {
		return mapper.find_id(vo);
	}

	//이메일 
	@Override
	public String email_Ck(UsersVO vo) {
		return mapper.email_Ck(vo);
	}

	//비밀번호 재설정
	@Override
	public int resetPw(UsersVO vo) throws Exception {
		   String rawPw = "";            // 인코딩 전 비밀번호
	       String encodePw = "";        // 인코딩 후 비밀번호
	        
	       rawPw = vo.getPw();            // 비밀번호 데이터 얻음
	       encodePw = pwEncoder.encode(rawPw);        // 비밀번호 인코딩
	       vo.setPw(encodePw);            // 인코딩된 비밀번호 member객체에 다시 저장
	       
	       int result = mapper.resetPw(vo);
	       return result;
	}

	//마이페이지 비밀번호 
	@Override
	public String mypage_Pw(String id) throws Exception {
		
		return mapper.mypage_Pw(id);
	}

	@Override
	public MemberVO mypage_info(String empno) throws Exception {
		
		return mapper.mypage_info(empno);
	}

	@Override
	public int mypage_update_email(UsersVO vo) throws Exception {
		int result = mapper.mypage_update_email(vo);
		return result;
	}

	@Override
	public int mypage_update_phoneNum(UsersVO vo) throws Exception {
		int result = mapper.mypage_update_phoneNum(vo);

		return result;
	}

	@Override
	public int downClubCount(String id) throws Exception {
		int result = mapper.downClubCount(id);
		return result;
	}

	@Override
	public int deleteUser(String id) throws Exception {
		int result = mapper.deleteUser(id);
		return result;
	}

	
}
