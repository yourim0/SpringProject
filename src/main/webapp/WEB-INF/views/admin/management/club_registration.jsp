
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="../resources/css/btncss.css">
<link rel="stylesheet" href="../resources/css/inputcss.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">


<div class="container" style="padding-top: 150px;">
	<div class="row">
		<div class="col d-flex justify-content-center">

			<div class="col-lg-12 col-sm-12 col-xs-12">
				<div class="row">
					<div class="col-lg-12 col-sm-12 col-xs-12">
						<div class="widget">
							<div class="widget-header bordered-top bordered-palegreen">
								<span class="widget-caption"> 신규 동호회 등록 </span>
							</div>
							<div class="widget-header bordered-top bordered-palegreen">
								<span class="widget-caption"> * 새로운 동호회를 등록하기위해 아래의 입력사항을
									전부 입력해주세요 * </span>
							</div>
							<div class="widget-body">
								<form role="form">
									<div class="form-group">
										<label for="sminput">동호회 이름 </label> <input type="text"
											class="form-control input-xs" id="sminput"
											placeholder="Extra Small Input">
									</div>
									<div class="form-group">
										<label for="sminput"> 카테고리 </label> <select
											class="form-control" id="exampleFormControlSelect1">
											<option value="">카테고리를 선택해주세요</option>
											<option>레저</option>
											<option>음식</option>
											<option>운동</option>
											<option>스터디</option>
										</select>
									</div>
									<div class="form-group">
										<label for="sminput">게시일</label> <input type="date"
											class="form-control input-sm" id="currentDate"
											placeholder="Extra Small Input">
									</div>
									<div class="form-group">
										<label for="sminput"> 모임 주기 </label>
										<div class="row">
											<div class="col">
												<select class="form-control" id="">
													<option value="">요일을 선택해주세요</option>
													<option>매주 토요일</option>
													<option>매주 일요일</option>
												</select>
											</div>
											<div class="col">
												<select class="form-control" id="">
													<option value="">모임 시간을 선택해주세요</option>
													<option>8시</option>
													<option>9시</option>
													<option>10시</option>
													<option>11시</option>
													<option>12시</option>
													<option>13시</option>
													<option>14시</option>
													<option>15시</option>
													<option>16시</option>
													<option>17시</option>
													<option>18시</option>
													<option>19시</option>
													<option>20시</option>
												</select>
											</div>
										</div>
									</div>


									<div class="row">
										<div class="col d-flex justify-content-center">
											<button
												class="button button--winona button--border-thin button--round-s"
												data-text="정말~?" onclick="location.href='#'">
												<span>작성취소</span>
											</button>
											<button
												class="button button--winona button--border-thin button--round-s"
												data-text="진쫘~??" type="submit">
												<span>저장하기</span>
											</button>
										</div>

									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
</div>

<script>
	document.getElementById('currentDate').value = new Date().toISOString()
			.substring(0, 10);
</script>


<%@include file="../include/footer.jsp"%>