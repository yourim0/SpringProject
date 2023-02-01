
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/css/Categroy.css">



<div class="video-box">
	<video class="video-container" autoplay muted loop>
		<source src="../resources/images/여행.mp4" type="video/mp4">
	</video>
</div>
<h2>Travel</h2>
<table class="table table-striped">
	<tr>
		<th>번 호</th>
		<th>제 목</th>
		<th>상세보기</th>
	</tr>
	<tr>
		<td>1</td>
		<td>맛집탐방</td>
		<td><a href="/home/detail"><button type="button"
					class="btn btn-sm btn-outline-secondary ani-button">상세보기</button> </a>
		</td>
	</tr>
	<tr>
		<td>2</td>
		<td>사진</td>
		<td><a href="/home/detail"><button type="button"
					class="btn btn-sm btn-outline-secondary ani-button">상세보기</button> </a>
		</td>
	</tr>
	<tr>
		<td>3</td>
		<td>명소관광</td>
		<td><a href="/home/detail"><button type="button"
					class="btn btn-sm btn-outline-secondary ani-button">상세보기</button> </a>
		</td>
	</tr>
	<tr>
		<td>4</td>
		<td>캠핑</td>
		<td><a href="/home/detail"><button type="button"
					class="btn btn-sm btn-outline-secondary ani-button">상세보기</button> </a>
		</td>
	</tr>
</table>

<div class="page_wrap">
	<div class="page_nation">
		<a class="arrow pprev" href="#"></a> <a class="arrow prev" href="#"></a>
		<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a
			href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
		<a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a
			class="arrow next" href="#"></a> <a class="arrow nnext" href="#"></a>
	</div>
</div>

<%@include file="../include/footer.jsp"%>