<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
  int level = session.getAttribute("sLevel")==null ? 99 : (int) session.getAttribute("sLevel");
  pageContext.setAttribute("level", level);
%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<nav class="navbar navbar-expand-sm bg-success navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="navbar-brand" href="http://192.168.50.98:9090/javaweb15J/">그린도서관</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${ctp}/Guide.gu">도서관소개</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${ctp}/InforUse.in">도서관이용안내</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${ctp}/BookList.jsp">도서목록</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${ctp}/RentalList.re">대출현황</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${ctp}/BookApp.ok">도서신청</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${ctp}/BoardList.bo">게시판</a>
    </li>
    <li class="nav-item">
    <li class="nav-item">
    	<c:if test="${level > 2}"><a class="nav-link" href="${ctp}/MemberLogin.mem">로그인</a></c:if>
      <c:if test="${level <= 2}"><a class="nav-link" href="${ctp}/MemberLogout.mem">로그아웃</a></c:if>
    </li>  
   	<li class="nav-item">
      <c:if test="${level > 2}"><a class="nav-link" href="${ctp}/MemberJoin.mem">회원가입</a></c:if>
      <c:if test="${sLevel == 0}"><a class="nav-link" href="${ctp}/AdminMain.ad">관리자메뉴</a></c:if>
    </li>  
  </ul>
</nav>