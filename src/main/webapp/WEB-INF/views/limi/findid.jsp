
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>
<link href="../resources/css/userAuthcss.css" rel="stylesheet" />
<div id="container" class="sub" data-menu-name="아이디 찾기">
	<div class="container_align">
		<div id="SUB-GNB">
			<div id="submenu">
				<ul id="menu_submenu" class="menu_submenu ld1">
				</ul>
			</div>
		</div>

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
										data-depth="1"><span>아이디 찾기</span></a></li>
								</ul>
							</div>
						</nav>
					</div>
				</header>
				<!-- form  -->
				<form id="find_id" method="post">
				<fieldset>
					<div class="table_css">
						<div class="form_table">
							<table class="fit no_thead">
								<colgroup>
									<col width="200">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="name">사번<em>*</em></label></th>
										<td><input id="name" name="name" placeholder="사번을 입력하세요."
											type="text" value="" class="input_text"></td>
									</tr>
									<tr>
										<th scope="row"><label for="name">이름<em>*</em></label></th>
										<td><input id="name" name="name" placeholder="이름을 입력하세요."
											type="text" value="" class="input_text"></td>
									</tr>
									<tr>
										<th scope="row">생년월일<em>*</em></th>
										<td><select id="birthday_yyyy" name="birthday_yyyy"
											title="생년월일 중 년 선택"><option value=""
													selected="selected">년 선택</option></select>
													<select id="birthday_mm" name="birthday_mm" title="생년월일 중 월 선택"><option
													value="" selected="selected">월 선택</option></select>
													<select id="birthday_dd" name="birthday_dd" title="생년월일 중 일 선택"><option
													value="" selected="selected">일 선택</option></select></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="order_box">
							<a href="foundid"
								class="true">확인</a>
						</div>
					</div>
				</fieldset>
				</form>
			</section>
		</div>
	</div>
</div>

<script>
$(document).ready(function(){ 
	 var now = new Date();
	    var year = now.getFullYear();
	    var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
	    var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
	  //년도 selectbox만들기               
	    for(var i = 1900 ; i <= year ; i++) {
	        $('#birthday_yyyy').append('<option value="' + i + '">' + i + '년</option>');    
	    }

	    // 월별 selectbox 만들기            
	    for(var i=1; i <= 12; i++) {
	        var mm = i > 9 ? i : "0"+i ;            
	        $('#birthday_mm').append('<option value="' + mm + '">' + mm + '월</option>');    
	    }
	    
	    // 일별 selectbox 만들기
	    for(var i=1; i <= 31; i++) {
	        var dd = i > 9 ? i : "0"+i ;            
	        $('#birthday_dd').append('<option value="' + dd + '">' + dd+ '일</option>');    
	    }
})
</script>
<script>
//아이디 
var birthday_yyyy = $("#birthday_yyyy").val();
var birthday_mm = $("#birthday_mm").val();
var birthday_dd = $("#birthday_dd").val();
var birthday = birthday_yyyy + birthday_mm + birthday_dd;



</script>

<%@include file="../include/footer.jsp"%>
