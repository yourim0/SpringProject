 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   

<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="../resources/css/Free1.css">
   
  <div class = "container" style="margin-top: 100px;">
       <img src="../resources/images/pingpong.jpg" width="100%" height="300px">
	<div class="container">
		<div class="row">
		<form method="post" action="writerAction.jsp">
			<table class="table table-striped" style="text-align:center; border :1px solid #dddddd" > <%-- 홀,짝 행 구분 --%>
				<tbody>
					<tr>
						<td><input type="text" style="text-align:center;" class="form-control" placeholder="제목을 입력해주세요!" name="bbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea type="text" style="text-align:center;" class="form-control" placeholder="내용을 입력해 주세요!" name="bbsContent" maxlength="4000" style="height:350px;"></textarea></td>
					</tr>
				</tbody>
			</table>	
			<div>
				<div>
					 <input type="file" name="file"><br>
				</div>
				<div>
					<ul>
						<li>첨부가능 확장자 : JPG, JPEG, PNG, PDF, TXT</li>
						<li>첨부가능 총 용량 : 100Mbyte</li>
						<li>첨부 가능 개별 용량 : 100Mbyte</li>
					</ul>
				</div>
			</div>
			<div style="text-align:center;">
				<input type="submit" class="btn btn-primary pull-right" value="작성 완료">
				<input type="submit" class="btn btn-primary pull-right" value="작성 취소">
			</div>		
		</form>
		</div>
	</div>		
	</div>	
	
<%@include file="../include/footer.jsp"%>
