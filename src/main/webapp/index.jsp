<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="qwe" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-whidt, initial-scale=1">
	<title>그린도서관</title>
	<jsp:include page="/include/bs4.jsp" />
</head>
<body>
<script>
</script>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
	<h5 class="h3 font-weight-bold">👍오늘의 추천도서</h5><br/>
	<img src="${pageContext.request.contextPath}/images/books/s302832892_1.jpg" class="rounded" alt="세이노의 가르침 표지" width="200px">
	<img src="${pageContext.request.contextPath}/images/books/8972773204_1.jpg" class="rounded" alt="하버드의 첫 강의 시간관리 수업 표지" width="200px">
	<img src="${pageContext.request.contextPath}/images/books/896489720x_1.jpg" class="rounded" alt="부동산 개발의 숨겨진 이야기 표지" width="200px">
	<img src="${pageContext.request.contextPath}/images/books/s652635313_1.jpg" class="rounded" alt="3일간의 행복 표지" width="200px">
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>