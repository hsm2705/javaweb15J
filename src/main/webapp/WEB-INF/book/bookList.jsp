<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "book.BookVO" %>
<jsp:useBean id="BookDAO" class="book.BookDAO" scope="session"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-whidt, initial-scale=1">
	<title>도서목록</title>
	<jsp:include page="/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
	<h2>도서목록</h2>
</div>
<%
		ArrayList<BookVO> vo = BookDAO.getVO();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i=0; i < vo.size(); i++){
					BookVO book = vo.get(i);
			%>
			<div class="col-md-4">
				<h3><%=book.getBookName() %></h3>
				<p><%=book.getGenre() %></p>
				<p><%=book.getBookInfor() %></p>
			</div>
			<%
				}
			%>
		</div>
	</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>