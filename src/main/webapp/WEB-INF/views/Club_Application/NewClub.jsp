 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script><!-- 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="../resources/css/NewClub.css">
   <form>
   <article id="content" class="cols-d">
        <div>
        	<h1></h1>
        	<h1></h1>
        	<h1></h1>
            <h1>이용약관</h1>
            <form id="terms_form" class="f" action="#">
                <h4 class="scheme-g">개인정보취급방침</h4>
                <textarea style="font-size:1em; width : 584px; height : 150px;">내용입니다. 
                </textarea>
                <p>
                    <label><input type="checkbox" id="check_1"  name="" /> 위의 약관에 동의 합니다.<br/></label>
                </p>
            </form>
        </div>
        <table class="table table-striped">
            <tr>
                <th>신청자정보</th>
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
                <td>신청자성명</td>
                <td>
                    <input type="text" placeholder="직접입력">
                </td>
                <td></td>
            </tr>
            <tr>
                <td>동호회내용</td>
                <td><textarea style="width: 250px;" placeholder="필수항목: 신설이유,참여성별,활동시기&모임시기";></textarea></td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    
                        <button type="reset"  class="button_big" style="padding:0 10px 10px 10px;height:24px;">다시작성</button>
                        <input type="button" id="nextBtn"  class="button_big" style="padding:0 10px 10px 10px;height:24px;" value="신규등록"/>
                    
                </td>
            </tr>
        </table>  
        </article>
       </form>
</body>
<script>
    $(document).ready(function(){
        $("#nextBtn").click(function(){    
            if($("#check_1").is(":checked") == false){
                alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return;
            }else{
                $("#terms_form").submit();
            }
        });    
    });
    </script>
         
<%@include file="../include/footer.jsp"%>