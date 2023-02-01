
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
								<span class="widget-caption"> 신규 회원 등록 </span>
							</div>
							<div class="widget-header bordered-top bordered-palegreen">
								<span class="widget-caption"> * 신규회원이 인증하기 위해선 사원 정보가
									필요합니다 * </span>
							</div>
							<div class="widget-body">
								<form role="form">
									<div class="form-group">
										<label for="sminput">사원 번호</label> <input type="text"
											class="form-control input-xs" id="sminput"
											placeholder="Extra Small Input">
									</div>
									<div class="form-group">
										<label for="sminput">이름</label> <input type="text"
											class="form-control input-xs" id="sminput"
											placeholder="Extra Small Input">
									</div>
									<div class="form-group">
										<label for="sminput">이메일</label> <input type="text"
											class="form-control input-sm" id="sminput"
											placeholder="Extra Small Input">
									</div>
									<div class="form-group">
										<label for="sminput"> 생년월일 </label> <input type="text"
											class="form-control input-xs" id="sminput"
											placeholder="Extra Small Input">
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



<%@include file="../include/footer.jsp"%>