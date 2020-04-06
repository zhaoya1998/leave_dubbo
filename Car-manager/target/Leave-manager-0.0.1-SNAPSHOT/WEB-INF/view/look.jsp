<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
</head>
<body>
	<table  class="table table-dark">
		<tr>
			<td>申请人</td>
			<td>申请标题</td>
			<td>开始时间</td>
			<td>结束时间</td>
			<td>天数</td>
			<td>创建时间</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${list}" var="l">
			<tr>
				<td>${l.name}</td>
				<td>${l.title }</td>
				<td>${l.start}</td>
				<td>${l.end }</td>
				<td>${l.days }</td>
				<td>${l.time }</td>
				<td>
					<a href="list"><button type="button"class="btn btn-secondary">返回</button></a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>