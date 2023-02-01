 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   

<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="../resources/css/Qna.css">
   
  <div class = "container" style="margin-top: 100px;">
       <img src="../resources/images/playing.jpg" width="100%" height="300px">
	<div class="container">
		<div class="row">
		<form method="post">
			<table class="table table-striped" > <%-- 홀,짝 행 구분 --%>
				<tbody>
					<tr>
						<td><input type="text" style="text-align:center;" class="form-control" placeholder="제목을 입력해주세요!" name="bbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea type="text" style="text-align:center;" class="form-control" placeholder="내용을 입력해 주세요!" name="bbsContent" maxlength="4000" height:350"></textarea></td>
					</tr>
				</tbody>
			</table>
			<div style="text-align:center;">
				<input type="submit" class="btn btn-primary pull-right" value="작성 완료">
				<input type="submit" class="btn btn-primary pull-right" value="작성 취소">
	  			<input type="checkbox" id="secret" name="secret" checked>
	  			<label for="secret"><h6>비밀글</h6></label>
  			</div>	
		</form>
		</div>
	</div>		
	</div>	
	
<%@include file="../include/footer.jsp"%>
