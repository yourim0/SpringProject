
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>

.widget-26 {
	color: #3c4142;
	font-weight: 400;
}

.widget-26 tr:first-child td {
	border: 0;
}

.widget-26 .widget-26-job-emp-img img {
	width: 35px;
	height: 35px;
	border-radius: 50%;
}

.widget-26 .widget-26-job-title {
	min-width: 200px;
}

.widget-26 .widget-26-job-title a {
	font-weight: 400;
	font-size: 0.875rem;
	color: #3c4142;
	line-height: 1.5;
}

.widget-26 .widget-26-job-title a:hover {
	color: #68CBD7;
	text-decoration: none;
}

.widget-26 .widget-26-job-title .employer-name {
	margin: 0;
	line-height: 1.5;
	font-weight: 400;
	color: #3c4142;
	font-size: 0.8125rem;
	color: #3c4142;
}

.widget-26 .widget-26-job-title .employer-name:hover {
	color: #68CBD7;
	text-decoration: none;
}

.widget-26 .widget-26-job-title .time {
	font-size: 12px;
	font-weight: 400;
}

.widget-26 .widget-26-job-info {
	min-width: 100px;
	font-weight: 400;
}

.widget-26 .widget-26-job-info p {
	line-height: 1.5;
	color: #3c4142;
	font-size: 0.8125rem;
}

.widget-26 .widget-26-job-info .location {
	color: #3c4142;
}

.widget-26 .widget-26-job-salary {
	min-width: 70px;
	font-weight: 400;
	color: #3c4142;
	font-size: 0.8125rem;
}

.widget-26 .widget-26-job-category {
	padding: .5rem;
	display: inline-flex;
	white-space: nowrap;
	border-radius: 15px;
}

.widget-26 .widget-26-job-category .indicator {
	width: 13px;
	height: 13px;
	margin-right: .5rem;
	float: left;
	border-radius: 50%;
}

.widget-26 .widget-26-job-category span {
	font-size: 0.8125rem;
	color: #3c4142;
	font-weight: 600;
}

.widget-26 .widget-26-job-starred svg {
	width: 20px;
	height: 20px;
	color: #fd8b2c;
}

.widget-26 .widget-26-job-starred svg.starred {
	fill: #fd8b2c;
}

.bg-soft-base {
	background-color: #e1f5f7;
}

.bg-soft-warning {
	background-color: #fff4e1;
}

.bg-soft-success {
	background-color: #d1f6f2;
}

.bg-soft-danger {
	background-color: #fedce0;
}

.bg-soft-info {
	background-color: #d7efff;
}

.search-form {
	width: 80%;
	margin: 0 auto;
	margin-top: 1rem;
}

.search-form input {
	height: 100%;
	background: transparent;
	border: 0;
	display: block;
	width: 100%;
	padding: 1rem;
	height: 100%;
	font-size: 1rem;
}

.search-form select {
	background: transparent;
	border: 0;
	padding: 1rem;
	height: 100%;
	font-size: 1rem;
}

.search-form select:focus {
	border: 0;
}

.search-form button {
	height: 100%;
	width: 100%;
	font-size: 1rem;
}

.search-form button svg {
	width: 24px;
	height: 24px;
}

.search-body {
	margin-bottom: 1.5rem;
}

.search-body .search-filters .filter-list {
	margin-bottom: 1.3rem;
}

.search-body .search-filters .filter-list .title {
	color: #3c4142;
	margin-bottom: 1rem;
}

.search-body .search-filters .filter-list .filter-text {
	color: #727686;
}

.search-body .search-result .result-header {
	margin-bottom: 2rem;
}

.search-body .search-result .result-header .records {
	color: #3c4142;
}

.search-body .search-result .result-header .result-actions {
	text-align: right;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.search-body .search-result .result-header .result-actions .result-sorting
	{
	display: flex;
	align-items: center;
}

.search-body .search-result .result-header .result-actions .result-sorting span
	{
	flex-shrink: 0;
	font-size: 0.8125rem;
}

.search-body .search-result .result-header .result-actions .result-sorting select
	{
	color: #68CBD7;
}

.search-body .search-result .result-header .result-actions .result-sorting select option
	{
	color: #3c4142;
}

@media ( min-width : 768px) and (max-width: 991.98px) {
	.search-body .search-filters {
		display: flex;
	}
	.search-body .search-filters .filter-list {
		margin-right: 1rem;
	}
}

.card-margin {
	margin-bottom: 1.875rem;
}

@media ( min-width : 992px) {
	.col-lg-2 {
		flex: 0 0 16.66667%;
		max-width: 16.66667%;
	}
}

.card-margin {
	margin-bottom: 1.875rem;
}

.card {
	border: 0;
	box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
	-webkit-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
	-moz-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
	-ms-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #ffffff;
	background-clip: border-box;
	border: 1px solid #e6e4e9;
	border-radius: 8px;
}
</style>

<%@include file="../include/header.jsp"%>

<div class="container" style="padding-top: 150px;">

	<div class="row">
		<div class="col-12">
			<div class="card card-margin">
				<div class="card-body">
					<div class="row search-body">
						<div class="col-lg-12">
							<div class="search-result">
								<div class="result-header">
									<div class="row">
										<div class="col-lg-6">
											<div class="records">
												Showing: <b>1-10</b> of <b>200</b> result
											</div>
										</div>
										<div class="col-lg-6">
											<div class="result-actions  d-flex justify-content-end">
												<div class="records">회원 정보 관리</div>
											</div>
										</div>
									</div>
								</div>
								<div class="result-body">
									<div class="table-responsive">
										<table class="table widget-26">
											<tbody>
												<tr>
													<td>
														<div class="widget-26-job-emp-img">
															<img
																src="https://bootdey.com/img/Content/avatar/avatar5.png"
																alt="Company" />
														</div>
													</td>
													<td>
														<div class="widget-26-job-title">
															<a href="#"> 사원 번호 </a>
															<p class="m-0">
																<a href="#" class="employer-name">이름</a> <span
																	class="text-muted time">이름</span>
															</p>
														</div>
													</td>
													<td>
														<div class="widget-26-job-info">
															<p class="type m-0">가입일자</p>
															<p class="text-muted m-0">
																<span class="location">2010/10/10</span>
															</p>
														</div>
													</td>
													<td>
															<div class="widget-26-job-info">
															<p class="type m-0">활동 개수</p>
															<p class="text-muted m-0">
																<span class="location">3</span>
															</p>
														</div>
													</td>

													<td>
														<div class="widget-26-job-starred">

															<button class="btn btn btn-danger btn-xs " type="button"
																data-bs-toggle="modal" data-bs-target="#delete-modal">
																<i class="fa fa-trash-o"></i>삭제
															</button>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- 페이징 기능  -->
					<nav class="d-flex justify-content-center">
						<ul
							class="pagination pagination-base pagination-boxed pagination-square mb-0">
							<li class="page-item"><a class="page-link no-border"
								href="#"> <span aria-hidden="true">«</span> <span
									class="sr-only">Previous</span>
							</a></li>
							<li class="page-item active"><a class="page-link no-border"
								href="#">1</a></li>
							<li class="page-item"><a class="page-link no-border"
								href="#">2</a></li>
							<li class="page-item"><a class="page-link no-border"
								href="#">3</a></li>
							<li class="page-item"><a class="page-link no-border"
								href="#">4</a></li>
							<li class="page-item"><a class="page-link no-border"
								href="#"> <span aria-hidden="true">»</span> <span
									class="sr-only">Next</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- delete Modal -->
<div class="modal fade" id="delete-modal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">Delete</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">해당 회원을 정말 삭제하시겠습니까?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">취소</button>
				<button type="button" class="btn btn-danger">삭제하기</button>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>