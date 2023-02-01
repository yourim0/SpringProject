
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="../resources/css/Main.css">

<div class="container" style="padding-top: 150px;">
	<img src="../resources/images/study.jpg" width="100%" height="600">
	<h3>
		<span class="badge bg-secondary text-bg-info">자유게시판</span>
	</h3>
</div>
<div class="container">
	<div class="btn-group">
		<button type="button" class="btn btn-outline-info"
			data-bs-toggle="dropdown" aria-expanded="false">카테고리</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#">레져</a></li>
			<li><a class="dropdown-item" href="#">음식</a></li>
			<li><a class="dropdown-item" href="#">운동</a></li>
			<li><a class="dropdown-item" href="#">스터디</a></li>
		</ul>
		<button type="button" class="btn btn-outline-info"
			onclick="location.href='/home/freewrite'">작성하기</button>
	</div>
</div>



<div class="container">
	<div class="table-group">
		<table border="1" style="width:100%; padding:2px;">
			<tr>
				<td align="center"><select name="searchField">
						<option value="title">전체검색</option>
						<option value="content">제목</option>
						<option value="content">작성자</option>
				</select> <input type="text" name="searchWord" /> <input type="submit"
					value="검색하기" /></td>
			</tr>
		</table>

		<!-- 게시물 목록 테이블(표) -->
		<table class="table table-striped" style="width: 100%;">

			<tr>
				<th>번호</th>
				<th>유형</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th class="text-center">첨부파일</th>
			</tr>
			<tr>
				<td>1</td>
				<td>장혜림</td>
				<td><a href="/home/freedetail">동아리관련문의입니다.</a></td>
				<td>2</td>
				<td>2023/01/01</td>
				<td class="text-center"><button type="button" class="btn btn-secondary btn-sm">첨부
						파일</button></td>
			</tr>
			<tr>
				<td>2</td>
				<td>이병일</td>
				<td><a href="/home/freedetail">동아리관련문의입니다.</a></td>
				<td>2</td>
				<td>2023/01/01</td>
				<td class="text-center"><button type="button" class="btn btn-secondary btn-sm">첨부
						파일</button></td>
			</tr>
			<tr>
				<td>3</td>
				<td>양형준</td>
				<td><a href="/home/freedetail">동아리관련문의입니다.</a></td>
				<td>2</td>
				<td>2023/01/01</td>
				<td class="text-center"><button type="button" class="btn btn-secondary btn-sm">첨부
						파일</button></td>
			</tr>
			<tr>
				<td>4</td>
				<td>김유림</td>
				<td><a href="/home/freedetail">동아리관련문의입니다.</a></td>
				<td>2</td>
				<td>2023/01/01</td>
				<td class="text-center"><button type="button" class="btn btn-secondary btn-sm">첨부
						파일</button></td>
			</tr>
		</table>
	</div>
</div>

<div class="d-flex justify-content-center">
	<ul class="pagination mt-3 mb-0">
		<li class="disabled page-item"><a href="#" class="page-link">‹</a></li>
		<li class="active page-item"><a href="#" class="page-link">1</a></li>
		<li class="page-item"><a href="#" class="page-link">2</a></li>
		<li class="page-item"><a href="#" class="page-link">3</a></li>
		<li class="page-item"><a href="#" class="page-link">4</a></li>
		<li class="page-item"><a href="#" class="page-link">5</a></li>
		<li class="page-item"><a href="#" class="page-link">›</a></li>
		<li class="page-item"><a href="#" class="page-link">»</a></li>
	</ul>
</div>

<%@include file="../include/footer.jsp"%>
