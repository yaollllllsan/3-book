<%@page import="book.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Book book = (Book) request.getAttribute("book");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>结果</title>
<link rel='stylesheet' href='/book/css/xxx.css'>
</head>
<body>

<div style='width: 600px; margin: 1em auto; padding: 2em;'>
	<form action='/book/edit' method='post' class='edit'>
		<input type='text' name='id' readonly placeholder='id' value='<%= book.id %>'>
		<input type='text' name='bookName' placeholder='书名' value='<%= book.bookName %>'>
		<input type='number' name='price' placeholder='价格' value='<%= book.price %>'>
		<button>更新数据</button>
	</form>
	<a href='/book/list'>返回首页</a>
</div>

</body>
</html>