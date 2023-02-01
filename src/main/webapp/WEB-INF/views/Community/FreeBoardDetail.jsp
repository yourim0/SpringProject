 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   

<%@include file="../include/header.jsp"%>

   
  <div class = "container" style="margin-top: 100px;">
       <img src="../resources/images/golf1.jpg" width="100%" height="300px">
	</div>
	
	<div class="container">
		<div class="row">
		<form method="post" action="writerAction.jsp">
			<table class="table table-striped"  border :1px solid #dddddd" > <%-- 홀,짝 행 구분 --%>
				<tbody>
					<tr>
						<td>골프동호회 15회 정기활동</td>
					</tr>
						<td>작성자:RYAN | 작성일:2022년 1월 20일 11시 11분 11초 | 조회:5</td>
					<tr>
						<td><textarea type="text" class="form-control" name="bbsContent" maxlength="4000" style="height:350px;"></textarea></td>
					</tr>
						<td>15회차도 즐겁게끝났습니다!</td>
				</tbody>
			</table>	
			<div class="btn-groupp" role="group" aria-label="Basic example" style="text-align:end;">
					  <button type="button" class="btn btn-primary">수정하기</button>
					  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">삭제하기</button>
					  <button type="button" class="btn btn-primary" onclick="location.href='/home/freeboard'">목록보기</button>
					 <!-- Button trigger modal -->
						
					  <!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">게시물 삭제</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			       <p>게시물을 정말 삭제하시겠습니까?</p>
			      </div>
			      <div class="modal-footer">
			      	<button type="button" class="btn btn-primary">삭제하기</button>
			       	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
			      </div>
			    </div>
			  </div>
			</div>
			</div>
			
		</form>
		</div>
	</div>		
	
<%@include file="../include/footer.jsp"%>
