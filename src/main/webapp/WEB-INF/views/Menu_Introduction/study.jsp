
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="../resources/fonts/icomoon/style.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- Style -->
<link rel="stylesheet" href="../resources/css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/css/Categroy.css">

<div class="video-box">
        <video class="video-container" autoplay muted loop>
          <source src="../resources/images/스터디.mp4" type="video/mp4">
          </video>
      </div>
<div class="content">

	<div class="container">
		<h2 class="text-primary">LeisureSports</h2>

		<div class="table-responsive">

			<table class="table table-striped custom-table">
				<thead>
					<tr>
						<th class="text-black" scope="col">번호</th>
						<th scope="col">카테고리</th>
						<th scope="col">이름</th>
						<th scope="col">게시일</th>
						<th scope="col">모임주기</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td>2</td>
						<td>레저</td>
						<td>수상스키 <small class="d-block"> 수상스키 같이 탈 사람 모집 ...</small>
						</td>
						<td>2022-11-25</td>
						<td>매주 일요일 3시</td>
						<td><a href="/home/detail"><button type="button"
                    class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
                    </a></td>

					</tr>

					<tr>
						<td>1</td>
						<td>레저</td>
						<td>수상스키 <small class="d-block"> 수상스키 같이 탈 사람 모집 ...</small>
						</td>
						<td>2022-11-25</td>
						<td>매주 일요일 3시</td>
						<td><a href="/home/detail"><button type="button"
                    class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
                    </a></td>

					</tr>

				</tbody>
			</table>
		</div>


	</div>

</div>

<script src="../resources/js/jquery-3.3.1.min.js"></script>
<script src="../resources/js/popper.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/main.js"></script>


<%@include file="../include/footer.jsp"%>