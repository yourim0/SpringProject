package com.tp.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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

	@RequestMapping("/main")
	public String main() {
		
		return "main";
	}
	
	//-------------유저 로그인-------------------
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginGET(){
		System.out.println("login 페이지 진입");
		return "/limi/login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, UsersVO vo, RedirectAttributes rttr) throws Exception {
		
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
            session.setAttribute("lvo", lvo);     // session에 사용자의 정보 저장
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
		return "/limi/admin";
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
			if(admin_type == 1) {
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
	public String findidGET(HttpServletRequest reqest, Model model, UsersVO vo) {
		
		return "/limi/findid";
	}
	//-------------아이디 찾기 결과------------------
	@RequestMapping("/foundid")
	public String foundid() {
		
		return "/limi/foundid";
	}
	
	@RequestMapping("/findpw")
	public String findpw() {
		
		return "/limi/findpw";
	}
	
	@RequestMapping("/resetpw")
	public String resetpw() {
		
		return "/limi/resetpw";
	}

	
	//-------------약관동의-------------------

	@RequestMapping(value="/join_agree", method = RequestMethod.GET)
	public String agreeGET() {
		System.out.println("약관동의 페이지 진입");
		return "/limi/join_agree";
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
		return "/limi/join_check";
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
			//return "/limi/join_check";
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
		return "/limi/join_form";
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
//	public String join_done(@RequestParam("id") String id) {
//	System.out.println(id);
		return "/limi/join_done";
		
	}
	

}
