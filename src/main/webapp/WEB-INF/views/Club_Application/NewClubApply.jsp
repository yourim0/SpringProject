 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

   <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="../resources/css/NewClub.css">
    
    
	<article id="content" class="cols-d">
        <table class="table table-striped">
            <tr>
                <th>신규동호회등록</th>
                <th></th>
                <th></th>
                
            </tr>
            <tr>
                <td>동호회이름</td>
                <td> <input type="text" placeholder="직접입력"></td>
                <td>
                </td>
            </tr>
            <tr>
                <td>카테고리</td>
                <td>
                    <select name="club" class="select">
                        <option disabled selected>---선택---</option>
                        <option value="Sports">LeisureSports</option>
                        <option value="Sports">Sports</option>
                        <option value="Travel">Travel</option>
                        <option value="Study">Study</option>
                    </select>
                </td>
                <td> </td>
            </tr>
            <tr>
                <td>게시일</td>
                <td>
                    <input type="text" placeholder="직접입력">
                </td>
                <td></td>
            </tr>
            <tr>
                <td>모임주기</td>
                <td><input type="radio" id="day" value="토요일">토요일
                    <input type="radio" id="day" value="토요일">일요일
                    <select name="club" class="select">
                        <option disabled selected>시간:선택</option>
                        <option value="minute">6시</option>
                        <option value="minute">7시</option>
                        <option value="minute">8시</option>
                        <option value="minute">9시</option>
                        <option value="minute">10시</option>
                        <option value="minute">11시</option>
                        <option value="minute">12시</option>
                        <option value="minute">13시</option>
                        <option value="minute">14시</option>
                        <option value="minute">15시</option>
                        <option value="minute">16시</option>
                        <option value="minute">17시</option>
                        <option value="minute">18시</option>
                    </select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <form>
                        <input type="button" id="nextBtn"  class="button_big" style="padding:0 10px 10px 10px;height:24px;" value="등록하기"/>
                    </form>
                </td>
            </tr>
        </table>  
        </article>
       
</body>
<script>
    $(document).ready(function(){

        $("#nextBtn").click(function(){    
            if($("#id").is(":checked") == false){
                alert("모든 항목을 작성해주세요.");
                return;
            }else{
                $("#terms_form").submit();
            }
        });    
    });
</script>
         
<%@include file="../include/footer.jsp"%>