<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
  int level = session.getAttribute("sLevel")==null ? 99 : (int) session.getAttribute("sLevel");
  pageContext.setAttribute("level", level);
%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<script>
  function deleteAsk() {
	  let ans = confirm("정말로 탈퇴 하시겠습니까?");
	  if(ans) {
		  let ans2 = confirm("탈퇴후 같은 아이디로 1개월간 재가입하실수 없습니다.\n그래도 탈퇴 하시겠습니까?");
		  if(ans2) location.href="${ctp}/MemberDeleteAsk.mem";
	  }
  }
</script>
<nav class="navbar navbar-expand-sm bg-success navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="navbar-brand" href="http://192.168.50.98:9090/javaweb15J/">그린도서관</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/Guide.gu">도서관소개</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/InforUse.in">도서관이용안내</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/RentalList.re">도서목록</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/RentalList.re">대출현황</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/BookApp.bo">도서신청</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/BoardList.bo">게시판</a>
    </li>
    <li class="nav-item">
    <li class="nav-item">
    	<c:if test="${level > 2}"><a class="nav-link" href="${pageContext.request.contextPath}/MemberLogin.mem">로그인</a></c:if>
      <c:if test="${level <= 2}"><a class="nav-link" href="${pageContext.request.contextPath}/MemberLogout.mem">로그아웃</a></c:if>
    </li>  
   	<li class="nav-item">
      <c:if test="${level > 2}"><a class="nav-link" href="${pageContext.request.contextPath}/MemberJoin.mem">회원가입</a></c:if>
    </li>  
  </ul>
</nav>