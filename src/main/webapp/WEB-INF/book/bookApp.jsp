<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-whidt, initial-scale=1">
	<title>도서신청</title>
	<jsp:include page="/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
	<h2 class="display-3">도서등록</h2>
</div>
<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" 
		method="post">
			<div class="form-group row">
				<label class="col-sm-2">도서코드</label>
				<div class="col-sm-3">
					<input type="text" id="bookCode"  name="bookCode"  class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">도서명</label>
				<div class="col-sm-3">
					<input type="text" id="bookName"  name="bookName" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">장르</label>
				<div class="col-sm-3">
					<input type="text" id="genre"  name="genre" class="form-control" >
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">저자</label>
				<div class="col-sm-3">
					<input type="text" name="author" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">출판사</label>
				<div class="col-sm-3">
					<input type="text" name="publisher" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상세정보</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록하기">
				</div>
			</div>
		</form>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>