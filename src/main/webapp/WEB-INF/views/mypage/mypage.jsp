<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>
</head>
<body>
	<div class="wrap">
		<div class="img">
			<img src="../resources/images/2-1.jpg" class="main_img">
		</div>
		<div class="text">
			<p>My Page</p>
		</div>
	</div>
	<hr />
	<span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
		&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
		&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span>


	<!-- 집 아이콘 -->
	<svg xmlns="http://www.w3.org/2000/svg" width="22" height="19"
		fill="currentColor" class="bi bi-globe2" viewBox="0 0 16 16">
	  <path
			d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855-.143.268-.276.56-.395.872.705.157 1.472.257 2.282.287V1.077zM4.249 3.539c.142-.384.304-.744.481-1.078a6.7 6.7 0 0 1 .597-.933A7.01 7.01 0 0 0 3.051 3.05c.362.184.763.349 1.198.49zM3.509 7.5c.036-1.07.188-2.087.436-3.008a9.124 9.124 0 0 1-1.565-.667A6.964 6.964 0 0 0 1.018 7.5h2.49zm1.4-2.741a12.344 12.344 0 0 0-.4 2.741H7.5V5.091c-.91-.03-1.783-.145-2.591-.332zM8.5 5.09V7.5h2.99a12.342 12.342 0 0 0-.399-2.741c-.808.187-1.681.301-2.591.332zM4.51 8.5c.035.987.176 1.914.399 2.741A13.612 13.612 0 0 1 7.5 10.91V8.5H4.51zm3.99 0v2.409c.91.03 1.783.145 2.591.332.223-.827.364-1.754.4-2.741H8.5zm-3.282 3.696c.12.312.252.604.395.872.552 1.035 1.218 1.65 1.887 1.855V11.91c-.81.03-1.577.13-2.282.287zm.11 2.276a6.696 6.696 0 0 1-.598-.933 8.853 8.853 0 0 1-.481-1.079 8.38 8.38 0 0 0-1.198.49 7.01 7.01 0 0 0 2.276 1.522zm-1.383-2.964A13.36 13.36 0 0 1 3.508 8.5h-2.49a6.963 6.963 0 0 0 1.362 3.675c.47-.258.995-.482 1.565-.667zm6.728 2.964a7.009 7.009 0 0 0 2.275-1.521 8.376 8.376 0 0 0-1.197-.49 8.853 8.853 0 0 1-.481 1.078 6.688 6.688 0 0 1-.597.933zM8.5 11.909v3.014c.67-.204 1.335-.82 1.887-1.855.143-.268.276-.56.395-.872A12.63 12.63 0 0 0 8.5 11.91zm3.555-.401c.57.185 1.095.409 1.565.667A6.963 6.963 0 0 0 14.982 8.5h-2.49a13.36 13.36 0 0 1-.437 3.008zM14.982 7.5a6.963 6.963 0 0 0-1.362-3.675c-.47.258-.995.482-1.565.667.248.92.4 1.938.437 3.008h2.49zM11.27 2.461c.177.334.339.694.482 1.078a8.368 8.368 0 0 0 1.196-.49 7.01 7.01 0 0 0-2.275-1.52c.218.283.418.597.597.932zm-.488 1.343a7.765 7.765 0 0 0-.395-.872C9.835 1.897 9.17 1.282 8.5 1.077V4.09c.81-.03 1.577-.13 2.282-.287z" />
	</svg>

	<span>&nbsp;&nbsp;&nbsp;</span>

	<!--대분류입니다.--->
	<select class="dropdown" name="sel_one" id="sel_one" onchange="">
		<option class="dropbtn" value="10">회원정보 관리</option>
		<option class="dropbtn" value="20">동호회 신청 현황</option>
		<!--등등-->
	</select>

	<span>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;</span>

	<!--중분류입니다.(회원정보 관리에 해당하는)-->
	<select class="dropdown" name="sel_two" id="sel_two" onchange="location.href=this.value">
		<option class="dropbtn" value="/info" selected>회원정보 수정</option> 
		<option class="dropbtn" value="/password">비밀번호 관리</option>
		<option class="dropbtn" ]value="/withDrawal">회원탈퇴</option>
		<!--등등-->
	</select>

	<hr />
<form id="mypage_pw" method="post">
	<fieldset>
		<div class="messagebox">
			<div>
				<ul>
					<li>개인정보 보호를 위하여 비밀번호 확인 후 회원정보의 관리/변경이 가능합니다.</li>
					<li>아래 비밀번호 입력란에 비밀번호 입력 후 &quot;비밀번호 확인&quot;을 클릭하세요.</li>
				</ul>
			</div>
		</div>
		<br>
		<h4>비밀번호 입력</h4>
		<table class="fit">
			<colgroup>
				<col style="width: 25%" />
				<col style="width: auto" />
			</colgroup>

			<div class="container2">
				<div class="row">
					<div class="col-sm-3">
						<label for="user_password">비밀번호</label>
					</div>
					<div class="col-sm-9">
						<input id="user_password" name="user_password"
							placeholder="비밀번호를 입력해 주세요." autofocus="autofocus"
							type="password" value="" size="50" style="color: gray;" />
					</div>
				</div>
			</div>
		</table>

		<p class="order_box">
			<button type="button" class="mypage_pw" onclick="check_pw()">확인</button>
			<button type="button" class="findpw_button" onclick="">취소</button>
		</p>
	</fieldset>
</form>

<script>
check_pw = function(){
	var form = $("#mypage_pw");
	var user_password = document.getElementById("user_password").value;
	console.log(user_password);
	
		//공백확인
		if (user_password == "" ) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		form.submit();
	}
</script>
<script>
	var result = ${result};
	if(result == 1 ){
		alert("확인되었습니다.")
		location.href="/info";
	}else if(result == 0){
		alert("비밀번호를 확인해주세요.");
	}
</script>

<%@include file="../include/footer.jsp"%>
