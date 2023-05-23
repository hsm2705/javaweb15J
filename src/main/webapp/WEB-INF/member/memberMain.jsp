<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="qwe" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberMain.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
  <style>
    .viewCheck {
      color: red;
    }
    #memberInfo1, #memberInfo2 {
      float: left;
    }
    #memberInfo3, #memberInfo4 {
      clear: both;
    }
  </style>
  <script>
    function chatInput() {
    	let chat = $("#chat").val();
    	if(chat.trim() != "") {
    		$.ajax({
    			type : "post",
    			url  : "${qwe}/MemberMessageInput.mem",
    			data : {chat : chat},
    			error:function() {
    				alert("전송오류!!");
    			}
    		});
    	}
    }
    
    $(function() {
    	$("#chat").on("keydown",function(e) {
    		if(e.keyCode == 13) {
    			chatInput();
    		}
    	});
    });
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
  <h2>회 원 전 용 방</h2>
  <hr/>
  <div id="memberInfo1" class="mr-5">
    <p>현재 <font color="blue">${sNickName}</font>(${strLevel})님 로그인 중이십니다.</p>
  </div>
  <hr id="memberInfo4" />
    <div id="memberInfo2">
    <p>오늘의 추천도서<br/><img src="${qwe}/images/books/${photo}" width="200px"/></p>
  </div>
  
  <!-- <div id="memberInfo3"> -->
    <hr/>
	  <h4>활동내역</h4>
	  <p>책 대여 횟수 : <span class="viewCheck">${rentalCnt}</span> 건</p>
	  <p>게시판에 올린글수 : <span class="viewCheck">
	                       <c:if test="${boardCnt == 0}">${boardCnt}</c:if>
	                       <c:if test="${boardCnt != 0}"><a href="${qwe}/BoardSearchMember.bo">${boardCnt}</a></c:if>
	                     </span>건</p>
  </div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>