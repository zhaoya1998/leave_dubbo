<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
</head>
<body>
	<form action="login" method="post">
		<h1>登录页面</h1>

		<h3>用户名:<input type="text" name="name"><br> 密码:<input type="text"
			name="pwd"></h3> <input type="submit" value="登录">
	</form>
</body>
</html>