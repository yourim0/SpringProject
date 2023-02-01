a
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<link rel="stylesheet" href="../resources/css/boardcss.css">


<div class="container" style="padding-top: 100px;">


	<div class="row flex-lg-nowrap">

		<div class="col">


			<div class="row flex-lg-nowrap">
				<div class="col mb-3">
					<div class="e-panel card">


						<div class="card-body">
							<div class="card-title">
								<div class="container">
									<div class="row m-3">
										<h6 class="col-11 mr-2">
											<small class="px-1">동호회 관리</small>
										</h6>
									</div>
								</div>
								<div class="container">
									<div class="row no-gutters">
										<div class="col-lg-2 col-md-2 col-sm-12 p-0">
											<select class="form-control" id="exampleFormControlSelect1">
												<option>레저</option>
												<option>음식</option>
												<option>운동</option>
												<option>스터디</option>
											</select>
										</div>
										<div class="col-lg-9 col-md-7 col-sm-12 p-0">
											<input type="text" placeholder="검색할 내용을 입력해주세요"
												class="form-control" id="search" name="search">
										</div>

										<div class="col-lg-1 col-md-3 col-sm-12 p-0">
											<button type="submit" class="btn btn-base">
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													class="feather feather-search">
													<circle cx="11" cy="11" r="8"></circle>
													<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
											</button>
										</div>
									</div>

								</div>

							</div>
							<div class="e-table">
								<div class="table-responsive table-lg mt-3">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th class="align-top">번호</th>
												<th>동호회 이름</th>
												<th class="max-width">카테고리</th>
												<th class="sortable">시작일</th>
												<th>관리</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="align-middle">1</td>
												<td class="text-nowrap align-middle"><a href="clubdetail">스프링 팀프로젝트</a></td>
												<td class="align-middle align-middle">스터디</td>
												<td class="text-center align-middle"><span>2022-10-20</span></td>
												<td class="text-center align-middle">
													<div class="btn-group align-top">
														<button class="btn btn-sm btn-outline-secondary "
															type="button" data-bs-toggle="modal"
															data-bs-target="#delete-modal">삭제</button>

													</div>
												</td>
											</tr>

										</tbody>
									</table>
								</div>
								<div class="d-flex justify-content-end">
									<div class="records">
										Showing: <b>1-20</b> of <b>200</b> result
									</div>
								</div>
								<div class="d-flex justify-content-center">
									<ul class="pagination mt-3 mb-0">
										<li class="disabled page-item"><a href="#"
											class="page-link">‹</a></li>
										<li class="active page-item"><a href="#"
											class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">4</a></li>
										<li class="page-item"><a href="#" class="page-link">5</a></li>
										<li class="page-item"><a href="#" class="page-link">›</a></li>
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</ul>

								</div>



							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- delete Modal -->
<div class="modal fade" id="delete-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        	해당 동호회를 정말 삭제하시겠습니까? 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-danger">삭제하기</button>
      </div>
    </div>
  </div>
</div>


<%@include file="../include/footer.jsp"%>