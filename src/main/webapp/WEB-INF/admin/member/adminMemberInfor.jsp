<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>adminMemberInfor.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원 정보 상세 보기</h2>
  <br/>
  <table class="table">
    <tr><td>아이디 : ${vo.mid}</td></tr>
    <tr><td>성명 : ${vo.name}</td></tr>
    <tr><td>별명 : ${vo.nickName}</td></tr>
    <tr><td>성별 : ${vo.gender}</td></tr>
    <tr><td>생일 : ${vo.birthday}</td></tr>
    <tr><td>전화번호 : ${vo.tel}</td></tr>
    <tr><td>주소 : ${vo.address}</td></tr>
    <tr><td>이메일 : ${vo.email}</td></tr>
    <tr><td>정보공개유뮤 : ${vo.userInfor}</td></tr>
    <tr><td>회원등급 : ${strLevel}</td></tr>
  </table>
  <br/>
  <input type="button" value="돌아가기" onclick="history.back()" class="btn btn-primary"/>
</div>
<p><br/></p>
</body>
</html>