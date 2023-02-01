<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>password</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>
 </head> 
 <body>
   <div class="wrap">
          <div class="img" >
            <img src="../resources/images/2-1.jpg" class="main_img">
          </div>
          <div class="text">
          	<p>비밀번호 관리</p>
          </div>
   </div>
   <hr />
   <span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span>
   	<!-- <div class="dropdown">
      <span class="dropbtn">회원정보 관리</span>
      <div class="dropdown-content">
        <a href="#">회원정보 관리</a>
        <a href="#">동호회 신청 현황</a>
      </div> 
   	</div>
   	<span>|</span>
   	<div class="dropdown">
      <span class="dropbtn">회원정보 수정</span>
      <div class="dropdown-content">
        <a href="#">회원정보 관리</a>
        <a href="#">동호회 신청 현황</a>
      </div> 
   	</div> -->
   	
   	<!-- 집 아이콘 -->
   	<svg xmlns="http://www.w3.org/2000/svg" width="22" height="19" fill="currentColor" class="bi bi-globe2" viewBox="0 0 16 16">
	  <path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855-.143.268-.276.56-.395.872.705.157 1.472.257 2.282.287V1.077zM4.249 3.539c.142-.384.304-.744.481-1.078a6.7 6.7 0 0 1 .597-.933A7.01 7.01 0 0 0 3.051 3.05c.362.184.763.349 1.198.49zM3.509 7.5c.036-1.07.188-2.087.436-3.008a9.124 9.124 0 0 1-1.565-.667A6.964 6.964 0 0 0 1.018 7.5h2.49zm1.4-2.741a12.344 12.344 0 0 0-.4 2.741H7.5V5.091c-.91-.03-1.783-.145-2.591-.332zM8.5 5.09V7.5h2.99a12.342 12.342 0 0 0-.399-2.741c-.808.187-1.681.301-2.591.332zM4.51 8.5c.035.987.176 1.914.399 2.741A13.612 13.612 0 0 1 7.5 10.91V8.5H4.51zm3.99 0v2.409c.91.03 1.783.145 2.591.332.223-.827.364-1.754.4-2.741H8.5zm-3.282 3.696c.12.312.252.604.395.872.552 1.035 1.218 1.65 1.887 1.855V11.91c-.81.03-1.577.13-2.282.287zm.11 2.276a6.696 6.696 0 0 1-.598-.933 8.853 8.853 0 0 1-.481-1.079 8.38 8.38 0 0 0-1.198.49 7.01 7.01 0 0 0 2.276 1.522zm-1.383-2.964A13.36 13.36 0 0 1 3.508 8.5h-2.49a6.963 6.963 0 0 0 1.362 3.675c.47-.258.995-.482 1.565-.667zm6.728 2.964a7.009 7.009 0 0 0 2.275-1.521 8.376 8.376 0 0 0-1.197-.49 8.853 8.853 0 0 1-.481 1.078 6.688 6.688 0 0 1-.597.933zM8.5 11.909v3.014c.67-.204 1.335-.82 1.887-1.855.143-.268.276-.56.395-.872A12.63 12.63 0 0 0 8.5 11.91zm3.555-.401c.57.185 1.095.409 1.565.667A6.963 6.963 0 0 0 14.982 8.5h-2.49a13.36 13.36 0 0 1-.437 3.008zM14.982 7.5a6.963 6.963 0 0 0-1.362-3.675c-.47.258-.995.482-1.565.667.248.92.4 1.938.437 3.008h2.49zM11.27 2.461c.177.334.339.694.482 1.078a8.368 8.368 0 0 0 1.196-.49 7.01 7.01 0 0 0-2.275-1.52c.218.283.418.597.597.932zm-.488 1.343a7.765 7.765 0 0 0-.395-.872C9.835 1.897 9.17 1.282 8.5 1.077V4.09c.81-.03 1.577-.13 2.282-.287z"/>
	</svg>
	
	<span>&nbsp;&nbsp;&nbsp;</span>
	
	<!--대분류입니다.--->
	<select class="dropdown" name="level1" id="level1" onchange="A">
	  <option class="dropbtn" value="10">회원정보 관리</option>
	  <option class="dropbtn" value="20">동호회 신청 현황</option>
	  <!--등등-->
	</select>
	
	<span>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;</span>
	
	<!--중분류입니다.(회원정보 관리에 해당하는)-->
	<select class="dropdown" name="level2" id="level2" onchange="B">
	  <option class="dropbtn" value="1010">회원정보 수정</option>
	  <option class="dropbtn" value="1020">비밀번호 관리</option>
	  <option class="dropbtn" value="1030">로그아웃</option>
	  <option class="dropbtn" value="1040">회원탈퇴</option>
	  <option class="dropbtn" value="2010">내 신청 현황</option>
	  <!--등등-->
	</select>
	
	<!--<div class="dropdown">
	<button onclick="myFunction()" class="dropbtn">Dropdown</button>
	  <div id="myDropdown" class="dropdown-content">
	    <a href="#home">Home</a>
	    <a href="#about">About</a>
	    <a href="#contact">Contact</a>
	  </div>
	</div>
	<div class="dropdown">
	<button onclick="myFunction2()" class="dropbtn">Dropdown</button>
	  <div id="myDropdown2" class="dropdown-content">
	    <a href="#home">Home</a>
	    <a href="#about">About</a>
	    <a href="#contact">Contact</a>
	  </div>
	</div> -->
   	<hr />
   	
   	<div class="modules_fmcs_member">
	<div class="proc_password proc_write">
		
		<div class="messagebox">
			<div>
				<ul>
					<li>개인정보보호를 위해 주기적(최소 6개월)으로 비밀번호를 변경해 주세요.</li>
					<li>쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호가 같을 경우, 도용되기 쉬우므로 주기적으로 변경하여 사용하는 것이 좋습니다.</li>
					<li>아이디와 주민등록번호, 생일, 전화번호 등 개인정보와 관련된 숫자, 연속된 숫자, 반복된 문자 등 다른 사람이 쉽게 알아 낼 수 있는 비밀번호는 개인정보 유출의 위험이 높으므로 사용을 자제하시기 바랍니다.</li>
				</ul>
			</div>
		</div>
		
		<form id="memberForm" action="/fmcs/81" method="post">
			<fieldset>
				<!-- <legend>비밀번호 수정 양식</legend> -->
				
				<input type="hidden" name="SecurityToken" value="7D89F0BFDCA101F9A7BEA4BBC436544C"/>

				
				<input type="hidden" name="password_check" value="N"/>
				
				<h4>비밀번호 입력</h4>
				<table class="fit">
					<colgroup>
						<col style="width: 25%">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="now_password">현재 비밀번호</label></th>
							<td>
								<input id="now_password" name="now_password" type="password" value="" size="40" maxlength="20"/>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="user_password">새로운 비밀번호</label></th>
							<td>
								<input id="user_password" name="user_password" type="password" value="" size="40" maxlength="20"/>
							</td>
						</tr>

						<tr>
							<th scope="row"><label for="user_password_re">비밀번호 확인</label></th>
							<td>
								<input id="user_password_re" name="user_password_re" type="password" value="" size="40" maxlength="20"/>
							</td>
						</tr>
					</tbody>
				</table>
				<p>
					※ 영문 대문자, 소문자, 숫자, 특수기호를 2가지 조합 시 10자 이상, 3가지 이상 조합 시 8자 이상 입력하세요.
				</p>
				
				<div class="text-center">
					<input type="submit" class="submit1" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비밀번호 변경 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" tabindex="-1"/>
					<input type="submit" class="submit2" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비밀번호 찾기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" tabindex="-1"/>
					<!-- <p class="order_box">
						<a href="javascript:void(0)" onclick="$(this).parents('form').submit()" class="true">비밀번호 확인</a>
					</p> -->
				</div>
			</fieldset>
		</form>
	</div>
</div>
   	


<%@include file="../include/footer.jsp"%>
</body>
</html>