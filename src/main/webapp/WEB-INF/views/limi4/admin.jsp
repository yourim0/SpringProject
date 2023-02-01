
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>
<link href="../resources/css/userAuthcss.css" rel="stylesheet" />

<div id="container" class="sub" data-menu-name="로그인">
	<div class="container_align">
		<div id="SUB-GNB">
			<div id="submenu">
				<ul id="menu_submenu" class="menu_submenu ld1">
				</ul>
			</div>
		</div>
		<!-- <hr class="linebreak">  -->

		<div id="section">
			<section>
				<header>
					<div class="menu_path_box">
						<nav class="menu_path menu_depth_2">
							<a class="home" href="#">HOME</a>
							<div class="ld1">
								<ul class="menu_topmenu ld1">
									<li class="cd1 cd1c8 open hasChild childCount4 fix_menu"><a
										href="#"
										class="l1 menusrl_2 menutype_move_child open active hasChild childCount4"
										data-depth="1"><span>로그인</span></a></li>
								</ul>
							</div>
							<div class="ld2">
								<ul class="ld2 open">
									<li class="cd2 cd2c1 open nowmenu fix_menu"><a href="#"
										class="l2 menusrl_3 menutype_modules_fmcs_member open nowmenu active"
										data-depth="2"><span>회원로그인 <input type="checkbox"
												name="userlogin" onclick="movepage('/login')"  ></span></a></li>
								</ul>
							</div>
							<div class="ld3">
								<ul class="ld3 open">
									<li class="cd2 cd2c1 open nowmenu fix_menu"><a href="#"
										class="l2 menusrl_3 menutype_modules_fmcs_member open nowmenu active"
										data-depth="2"><span>관리자로그인 <input type="checkbox"
												name="adminlogin" onclick="movepage('/admin')" checked></span></a></li>
								</ul>
							</div>
						</nav>
					</div>
				</header>


				<div id="contents" class="contents">
					<article class="contents_article">
						<div class="modules_fmcs_member">
							<div class="proc_login proc_login_single">
								<div class="section_box">
									<div class="section1">
										<h2>관리자 로그인</h2>
										<form id="memberLoginForm" action="#" method="post">
											<fieldset>
												<input type="hidden" name="SecurityToken"
													value="A9F2A26F7E01DD337DF60BD43403E0BF">
												<div class="inbox">
													<p class="input_id">
														<label for="user_id"></label><input id="user_id"
															name="user_id" placeholder="아이디" autofocus="autofocus"
															type="text" value="" maxlength="30" class="input_text">
													</p>
													<p class="input_pw">
														<label for="user_password"></label><input
															id="user_password" name="user_password"
															placeholder="비밀번호" type="password" value=""
															maxlength="30" class="input_password">
													</p>
													<p class="submit">
														<button type="submit" onclick="location.href='/admin/home'">로그인</button>
													</p>
												</div>
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>

					</article>
				</div>
			</section>
		</div>
	</div>
</div>
<script>
function movepage(page)
{
window.document.location.href=page;
return;
}
</script>
<%@include file="../include/footer.jsp"%>
