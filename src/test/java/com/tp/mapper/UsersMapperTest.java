package com.tp.mapper;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tp.domain.MemberVO;
import com.tp.domain.UsersVO;
import com.tp.mapper.UsersMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UsersMapperTest {

	@Setter(onMethod_ = @Autowired)
	private UsersMapper usersmapper;

	// 회원가입 쿼리 테스트 메서드
//		@Test
//		public void memberJoin() throws Exception{
//			log.info("123");
//			
//			UsersVO user = new UsersVO();
//			
//			user.setId("fofo");	
//			user.setEmpno("3333");		
//			user.setPw("1234");		
//			user.setPhoneNum("010-4567-1234");
//			
//			
//			log.info(user);
//			usersmapper.UserJoin(user);			//쿼리 메서드 실행
//		}

	// 사번체크 쿼리 테스트 메서드
//	@Test
//	public void userLogin() throws Exception {
//		MemberVO member = new MemberVO();
//		String dateStr = "19971027";
//
////			올바른 사번, 이름, 생년월일
//		member.setEmpno("44556677");
//		member.setName("limi");
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//		Date date = sdf.parse(dateStr);
//		member.setBirthdate(date);
//
//		usersmapper.MemberLogin(member);
//		System.out.print("결과값 " + member.toString());
//
//		System.out.print("결과값 " + member.toString());
//		System.out.print("결과값 " + usersmapper.MemberLogin(member));
//	}
	
	
	//아이디 중복검사
//	@Test
//	public void memberIdChk() throws Exception{
//		String id = "limi";
//		String id2 = "hh";
//		
//		int result = usersmapper.idCheck(id);
//		int result2 = usersmapper.idCheck(id2);
//
//		System.out.println("result" + result );
//		System.out.println("result2" + result2);
//
//		
//	}

	
    /* 로그인 쿼리 mapper 메서드 테스트 */
    @Test
    public void Login() throws Exception{
        
    	UsersVO vo = new UsersVO();    // MemberVO 변수 선언 및 초기화
        
        /* 올바른 아이디 비번 입력경우 */
        vo.setId("admin");
        vo.setPw("0000");
        
        usersmapper.Login(vo);
        System.out.println("결과 값 : " + usersmapper.Login(vo));
        
    }
}
