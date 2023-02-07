package com.tp.main;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tp.domain.MemberVO;
import com.tp.domain.UsersVO;
import com.tp.service.UsersService;

import lombok.extern.log4j.Log4j;

@Controller
//@RequestMapping("/home/*")
@Log4j
public class MainController {
	@Autowired
	private UsersService usersService;
	
	// 비밀번호 해시함수
	BCryptPasswordEncoder pwEncoder = new BCryptPasswordEncoder();
	
	//메일 전송 
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping("/main")
	public String main() {
		
		return "main";
	}
	
	//-------------이메일인증-------------------
	@RequestMapping(value = "/mailCheck", method=RequestMethod.POST)
	@ResponseBody
	public String mailCheckGET(UsersVO vo, RedirectAttributes rttr) throws Exception{
		
		//사번,아이디 확인해서 이메일 가져오기
		String empno = vo.getEmpno();
		String id = vo.getId();
		
		String email = usersService.email_Ck(vo);
		log.info("조회 데이터" +email);
		
		//이메일 정보 없으면
		if(email == null) {
			log.info("이메일 정보없음");
			return "1";
		}
		
//		//이메일에 보낼 난수 생성
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		log.info("생성된 인증번호 " + checkNum);
//		
//		//이메일 보내기
		String subject = "인증번호 안내메일";
		String content = "회원가입 인증 메일입니다. 인증번호는" + checkNum +" 입니다.해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		String from = "kyourim@gmail.com";
		String to = email;
		
		try {
		MimeMessage mail = mailSender.createMimeMessage();
		MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
	
		mailHelper.setFrom(from);
        mailHelper.setTo(to);
        mailHelper.setSubject(subject);
        mailHelper.setText(content, true);
        
        mailSender.send(mail);
	
	}catch(Exception e) {
		e.printStackTrace();
	}
		
		String num = Integer.toString(checkNum);
		return num;
	}
	

	//-------------유저 로그인-------------------
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginGET(){
		System.out.println("login 페이지 진입");
		return "/account/login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, UsersVO vo, RedirectAttributes rttr) throws Exception {
		//sersVO: 데이터를 전달받기/HttpServletRequest: 로그인 성공 시 session에 회원 정보를 저장/RedirectAttributes: 로그인 실패 시 리다이렉트 된 로그인 페이지에 실패를 의미하는 데이터를 전송

		HttpSession session = request.getSession();
		System.out.println("입력받은 정보 : " + vo);
		String rawPw = ""; //입력받은 패스워드
        String encodePw = ""; //인코딩된 패스워드
        int admin_type;
        
		UsersVO lvo = usersService.Login(vo);
		System.out.println("해당 아이디 전체정보 : " + lvo);

		//lvo 정보 없을때
		if(lvo == null) {
			rttr.addFlashAttribute("admin_type", 0);
			return "redirect:/login";
		}
		
		//lvo 정보 있을때 
		rawPw = vo.getPw();
		encodePw = lvo.getPw();
		admin_type = lvo.getAdmin_type();
		
		log.info("admin" + admin_type);

		//비밀번호 일치여부 판단
		if(true == pwEncoder.matches(rawPw, encodePw)) {
			if(admin_type == 1) {
				boolean result = true;
				rttr.addFlashAttribute("result", result);
				rttr.addFlashAttribute("admin_type", admin_type);
				log.info("비번 불일치");
				return "redirect:/login"; 
			}else {
        	lvo.setPw("");                    // 인코딩된 비밀번호 정보 지움
            session.setAttribute("lvo", lvo);  // session에 사용자의 정보 저장
            return "redirect:/main";  // 메인페이지 이동       
			}
        //불일치
		}else{     
			boolean result = false;
			rttr.addFlashAttribute("result", result);
			rttr.addFlashAttribute("admin_type", admin_type);
			log.info("비번 불일치");
			return "redirect:/login";   // 로그인 페이지로 이동
        }
	}
	
	
	//-------------관리자 로그인-------------------
	@RequestMapping(value="admin", method=RequestMethod.GET)
	public String adminGET() {
		System.out.println("관리자 login 페이지 진입");
		return "/account/admin";
	}

	@RequestMapping(value="admin", method=RequestMethod.POST)
	public String adminPOST(HttpServletRequest request, UsersVO vo, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		System.out.println("입력받은 정보 : " + vo);
		String rawPw = ""; //입력받은 패스워드
        String encodePw = ""; //인코딩된 패스워드
        int admin_type;
  
		UsersVO lvo = usersService.Login(vo);
		System.out.println("해당 아이디 전체정보 : " + lvo);

		//lvo 정보 없을때
		if(lvo == null) {
			rttr.addFlashAttribute("admin_type", 1);
			return "redirect:/admin";
		}
		
		//lvo 정보 있을때 
		rawPw = vo.getPw();
		encodePw = lvo.getPw();
		admin_type = lvo.getAdmin_type();
		
		log.info("admin" + admin_type);

		//비밀번호 일치여부 판단
		if(true == pwEncoder.matches(rawPw, encodePw)) {
			if(admin_type == 0) {
				rttr.addFlashAttribute("admin_type", admin_type);
				log.info("admin:0");
				return "redirect:/admin"; 
			}else {
	        	lvo.setPw("");                    // 인코딩된 비밀번호 정보 지움
	            session.setAttribute("lvo", lvo);     // session에 사용자의 정보 저장
	            return "redirect:/main";  // 메인페이지 이동       
			}
        //불일치
		}else{
			rttr.addFlashAttribute("admin_type", admin_type);
			log.info("비번 불일치");
			return "redirect:/admin";   // 로그인 페이지로 이동
        }
	}
	
	//-------------아이디 찾기------------------
	@RequestMapping(value="findid", method=RequestMethod.GET)
	public String findidGET() {
		log.info("아이디 찾기 페이지 진입");
		
		return "/account/findid";
	}
	
	@RequestMapping(value="findid", method=RequestMethod.POST)
	public String findidPOST(MemberVO vo, RedirectAttributes rttr) throws Exception{
		log.info("아이디 찾기 POST");
		String id = usersService.findid(vo);
		log.info("id : " + id);
		
		if(id == null) {
			rttr.addFlashAttribute("id_result", 1);
			return "redirect:/findid";
		}
		
		rttr.addFlashAttribute("id", id);
		return "redirect:/foundid";
	}
	
	//-------------아이디 찾기 결과------------------
	@RequestMapping("/foundid")
	public String foundid() {
		
		return "/account/foundid";
	}
	
	//-------------비밀번호 찾기------------------
	@RequestMapping(value="/findpw",method=RequestMethod.GET)
	public String findpwGET() {
		
		return "/account/findpw";
	}

	@RequestMapping(value ="/findpw", method = RequestMethod.POST)
	public String findpwPOST(HttpServletRequest request, UsersVO vo) {
		HttpSession session = request.getSession();
		log.info("findpw : " + vo); //ok
		session.setAttribute("vo", vo); 
		return "redirect:/resetpw";
	}
	
	//-------------비밀번호 재설정------------------
	@RequestMapping(value = "/resetpw", method = RequestMethod.GET)
	public String resetpwGET(UsersVO vo) {
		return "/account/resetpw";
	}
	
	@RequestMapping(value = "/resetpw", method = RequestMethod.POST)
	public String resetpwPOST(HttpServletRequest request, UsersVO vo, RedirectAttributes rttr) throws Exception {
		HttpSession session = request.getSession();
		UsersVO sessionVO = (UsersVO) session.getAttribute("vo");
		String empno = sessionVO.getEmpno();
		log.info("empno" + empno); //ok
		vo.setEmpno(empno);
		log.info("set후 : " + vo);
		int result = usersService.resetPw(vo);
		
		if(result == 1) {
			rttr.addFlashAttribute("result",result);
		}else {
			rttr.addFlashAttribute("result",0);
		}
		return "redirect:/login";
	}
	
	//-------------약관동의-------------------
	@RequestMapping(value="/join_agree", method = RequestMethod.GET)
	public String agreeGET() {
		System.out.println("약관동의 페이지 진입");
		return "/account/join_agree";
	}
	
	@RequestMapping(value ="/join_agree", method = RequestMethod.POST)
	public String agreePOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) {
	    HttpSession session = request.getSession();
	    MemberVO vo = (MemberVO)session.getAttribute("member");
	    System.out.println("vo:"+vo);
	    System.out.println(vo.getName());
	    System.out.println("동의완료");
		return "redirect:/join_form";
	}
	
	
	//-------------사번인증-------------------
	@RequestMapping(value="/join_check", method = RequestMethod.GET)
	public String join_check() {
		System.out.println("사번체크 페이지 진입");
		return "/account/join_check";
	}
	
	@RequestMapping(value="/join_check",method=RequestMethod.POST)
	public String joincheckPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{

		HttpSession session = request.getSession();
		System.out.println("member : " + member);
		MemberVO lvo = usersService.memberLogin(member);
		System.out.println("전달된 데이터 : " + lvo);

		if(lvo == null) {
			boolean result = false;
			rttr.addFlashAttribute("result", result);
			//return "/account/join_check";
			return "redirect:/join_check";
		}
		session.setAttribute("member", lvo);
		return "redirect:/join_agree";
	//	return null;
	}
	
	//--------------회원가입--------------------
	@RequestMapping(value = "/join_form", method = RequestMethod.GET)
	public String joinGET() {
		log.info("회원가입 페이지 진입");
		return "/account/join_form";
	}
	

	@RequestMapping(value="/join_form", method=RequestMethod.POST)
	public String join_form(UsersVO vo,RedirectAttributes rttr) throws Exception{
       
        //회원가입 쿼리 실행
        usersService.UserJoin(vo);
        
        String id = vo.getId();
        rttr.addFlashAttribute("id", id);
        return "redirect:/join_done";
	}

	//--------------아이디 중복검사--------------------
	@RequestMapping(value="/memberIdChk", method=RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception{
		log.info("memberChk() 진입");
		int result = usersService.idCheck(memberId);
		log.info("result" + result);
		
		if(result == 0) {
			return "success";
		}else {
			return "fail";
	}
	}
	
	//--------------회원가입 완료--------------------
	@RequestMapping("/join_done")
	public String join_done() {

		return "/account/join_done";
		
	}

	
	//--------------mypage--------------------
	@RequestMapping(value = "/mypage", method=RequestMethod.GET)
	public String mypageGET(){
		log.info("mypage 진입");
		
		return "/mypage/mypage";
	}
	
	
	@RequestMapping(value = "/mypage", method=RequestMethod.POST)
	public String mypagePOST(HttpServletRequest request, RedirectAttributes rttr) throws Exception{
		log.info("POST 진입");
		HttpSession session = request.getSession();
		UsersVO lvo = (UsersVO)session.getAttribute("lvo");
		String id = lvo.getId();
		String encodePw = (String)usersService.mypage_Pw(id); //입력받은
		log.info(encodePw);
		String rawPw = request.getParameter("user_password");
		log.info("raw:"+ rawPw);
		
		if(true == pwEncoder.matches(rawPw, encodePw)) {
			rttr.addFlashAttribute("result",1);
			return "redirect:/mypage";

		}else {
			rttr.addFlashAttribute("result",0);
			return "redirect:/mypage";

		}
	}
	//--------------mypage_info--------------------
	
	@RequestMapping(value = "/info", method=RequestMethod.GET)
	public String infoGET(HttpServletRequest request, RedirectAttributes rttr) throws Exception{
		log.info("info 진입");
		
		HttpSession session = request.getSession();
		UsersVO lvo = (UsersVO)session.getAttribute("lvo");
		String empno = (String)lvo.getEmpno();

		MemberVO mvo = usersService.mypage_info(empno);
		session.setAttribute("mvo", mvo);
		
		return "/mypage/info";
	}
	
	@RequestMapping(value="/info", method=RequestMethod.POST)
	public String infoPOST(HttpServletRequest request, UsersVO vo,RedirectAttributes rttr) throws Exception{
		
		HttpSession session = request.getSession();
		String email = vo.getEmail();
		String phoneNum = vo.getPhoneNum();
		String id = vo.getId();
		
        UsersVO lvo = (UsersVO)session.getAttribute("lvo");
        String empno = lvo.getEmpno();
        vo.setEmpno(empno);
		
		int result_email = usersService.mypage_update_email(vo);
		int result_phoneNum = usersService.mypage_update_phoneNum(vo);
		
		log.info("result_email"+result_email);
		log.info("result_phoneNum"+result_phoneNum);

		lvo.setEmail(email);
		lvo.setPhoneNum(phoneNum);
		
        return "redirect:/info";
	}
	
	
	//--------------mypage_applyList--------------------
	@RequestMapping(value = "/applyList", method=RequestMethod.GET)
	public String applyList() throws Exception{
		log.info("applyList 진입");
		
		return "/mypage/applyList";
	}
	@RequestMapping(value = "/password", method=RequestMethod.GET)
	public String password() throws Exception{
		log.info("password 진입");
		
		return "/mypage/password";
	}
	
	@RequestMapping(value = "/withDrawal", method=RequestMethod.GET)
	public String withDrawal() throws Exception{
		log.info("applyList 진입");
		
		return "/mypage/withDrawal";
	}
	@RequestMapping(value = "/logout", method=RequestMethod.GET)
	public String logout() throws Exception{
		log.info("applyList 진입");
		
		return "/mypage/logout";
	}
}
