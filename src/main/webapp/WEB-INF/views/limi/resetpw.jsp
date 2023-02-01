
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>
<link href="../resources/css/userAuthcss.css" rel="stylesheet" />
<div id="container" class="sub" data-menu-name="비밀번호 찾기">
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
							<a class="home" href="main">HOME</a>
							<div class="ld1">
								<ul class="menu_topmenu ld1">
									<li class="cd1 cd1c8 open hasChild childCount4 fix_menu"><a
										href="#"
										class="l1 menusrl_2 menutype_move_child open active hasChild childCount4"
										data-depth="1"><span>비밀번호 찾기</span></a></li>
								</ul>
							</div>
						</nav>
					</div>
				</header>


				<fieldset>

					<input type="hidden" name="SecurityToken"
						value="8F28A1CF6B754BCAAEF47EDBEFC32C62">

					<div class="table_css">
						<div class="form_table">
							<table class="fit no_thead">
								<colgroup>
									<col width="200">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="name">새로운 비밀번호<em>*</em></label></th>
										<td><input id="name" name="name"
											placeholder="새로운 비밀번호를 입력하세요." type="text" value=""
											class="input_text"></td>
									</tr>
									<tr>
										<th scope="row"><label for="name">비밀번호 확인<em>*</em></label></th>
										<td><input id="name" name="name"
											placeholder="비밀번호를 입력하세요." type="text" value=""
											class="input_text"></td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="order_box">
							<a href="#" onclick="$(this).parents('form').submit()"
								class="true">변경하기</a>
						</div>

					</div>
				</fieldset>
			</section>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
