<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${msg != null}">
		<script>
			alert('${msg}');
			window.location.href = "http://52.78.116.59:8080/teuching/index/index.do";
		</script>
	</c:if>



</body>
</html>