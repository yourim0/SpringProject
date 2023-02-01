 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   

<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="../resources/css/Main.css">
   

	<div class = "container" style="margin-top: 100px;">
       <img src="../resources/images/baseball.jpg" width="100%" height="300px">
	<div class="container">
	

     
    <div class="table-group">
        <table  width="100%">
	        <tr>
	        
	        	<td align="center">
	        		<select name="searchField"  style="padding: 10px; border-radius: 5px;" >
	        			<option value="title">전체검색</option>
	        			<option value="content">제목</option>
	        			<option value="content">작성자</option>
	        		</select>
	        		<input type="text" name="searchWord"  style="padding: 10px; width: 270px; border-radius: 5px;"/>
	        		<input type="submit" value="검색하기"  style="padding: 10px; border-radius: 5px;"/>		
		        </td>
		        <td><button type="button"  style="padding: 10px; border-radius: 5px;" onclick="location.href='/home/qnawrite'">작성하기</button></td>
	       	
	        </tr>		
        </table>
     	
     	<!-- 게시물 목록 테이블(표) -->
    	<table class="table table-striped" style="width: 100%;">    
   			<tr>
	            <th>번호</th>
	            <th>유형</th>
	            <th>제목</th>
	            <th>작성자</th>
	            <th>작성일</th>
	        </tr>
	        <tr>
	            <td>1</td>
	            <td>장혜림</td>
	            <td><i class="bi bi-lock"></i><a href="/home/qnadetail">동아리관련문의입니다.</a></td>
	            <td>2</td>
	            <td>2023/01/01</td>
	            
	        </tr>
	        <tr>
	            <td>2</td>
	            <td>이병일</td>
	            <td><i class="bi bi-lock"></i><a href="/home/qnadetail">동아리관련문의입니다.</a></td>
	            <td>2</td>
	       		<td>2023/01/01</td>
	        </tr>
	        <tr>
	            <td>3</td>
	            <td>양형준</td>
	            <td><i class="bi bi-lock"></i><a href="/home/qnadetail">동아리관련문의입니다.</a></td>
	            <td>2</td>
	   			<td>2023/01/01</td>
			 </tr>
	        <tr>
	            <td>4</td>
	            <td>김유림</td>
	            <td><i class="bi bi-lock"></i><a href="/home/qnadetail">동아리관련문의입니다.</a></td>
	            <td>2</td>
	     		<td>2023/01/01</td>  		
	        </tr>
	    </table>
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
	
<%@include file="../include/footer.jsp"%>
