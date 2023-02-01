
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="../resources/js/filejs.js"></script>
<link rel="stylesheet" href="../resources/css/btncss.css">
<link rel="stylesheet" href="../resources/css/filecss.css">


<div class="container" style="padding-top: 150px;">
	<div class="card" role="document" style="padding: 10px;">
		<div class="card-body">
			<div class="card-title">
				<h5 class="">공지사항 작성</h5>
			</div>
			<div class="">
				<div class="py-1">
					<form class="form" novalidate="">
						<div class="row">
							<div class="col">

								<div class="row">
									<div class="col">
										<div class="form-group">
											<label>제목</label> <input class="form-control" type="text"
												placeholder="제목을 입력해주세요">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col mb-3">
										<div class="form-group">
											<label>내용</label>
											<textarea class="form-control" rows="10"
												placeholder="공지사항 내용을 입력해주세요"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="container text-center">
							<div class="input-file">
								<input type="text" readonly="readonly" class="file-name" /> <label
									for="upload01" class="file-label">파일 업로드</label> <input
									type="file" name="" id="upload01" class="file-upload" />
							</div>
						</div>

						<div class="row">
							<div class="col d-flex justify-content-center">
									<button
										class="button button--winona button--border-thin button--round-s"
										data-text="정말~?"
										onclick="location.href='freeboard'">
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

<%@include file="../include/footer.jsp"%>