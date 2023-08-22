<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찾은 아이디 보기</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f9f0cc;
	margin: 0;
	padding: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
}

.container {
	text-align: center;
	padding: 40px;
	background-color: white;
	border-radius: 10px;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
}

h2 {
	font-size: 24px;
	margin: 10px 0;
	color: #333;
}

.home-button {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	background-color: #3498db;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
	transition: background-color 0.3s;
}

.home-button:hover {
	background-color: #2980b9;
}
</style>
<%
Map<String, Object> idMap = (Map) request.getAttribute("idMap");
%>
</head>
<body>

	<%
	if (idMap != null)
	{
	%>
	<div class="container">
		<p>찾으신 아이디는</p>
		<h2><%=idMap.get("MEMBER_ID")%></h2>
		<p>입니다.</p>
		<a class="home-button" href="/memberSignIn/MemberSignIn.jsp">로그인</a>
	</div>
	<%
	} else
	{
	%>

	<div class="container">
		<h1>없는 아이디입니다.</h1>
		<a class="home-button" href="/memberSignIn/MemberSignIn.jsp">로그인</a>
	</div>
	<%
	}
	%>








</body>
</html>
