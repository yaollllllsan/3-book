<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>结果</title>
<link rel='stylesheet' href='/book/css/xxx.css'>
</head>
<body>

<div style='width: 400px; margin: 1em auto; background: #eee; padding: 2em;'>
	<span style='margin-right: 2em'>
	 <%= request.getAttribute("message") %>
	</span>
	<a href='<%
	Object o = request.getAttribute("page");
	if (o == null) {
		out.print("/book/login");
	} else {
		out.print(o);
	}
	%>'>返回首页</a>
</div>


<%@ include file="/footer.jsp" %>
</body>
</html>