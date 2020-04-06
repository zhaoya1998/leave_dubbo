<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/index_work.css" />
<link href="<%=request.getContextPath()%>/css/index_work.css"
	rel="stylesheet">
<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
function qx() {
	$("[name=ck]").attr("checked",true)
}
function look(gid) {
	location.href="look?gid="+gid
}
function add() {
	location.href="toAdd"
}
</script>
</head>
<body>
<form action="list" method="post">
 <input type="button" value="申请" onclick="add()">
</form>
	<table>
		<tr>
			<td><input type="checkbox" id="ids">id</td>
			<td>申请人</td>
			<td>申请标题</td>
			<td>开始时间</td>
			<td>结束时间</td>
			<td>天数</td>
			<td>创建时间</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${info.list}" var="l">
			<tr>
				<td><input type="checkbox" value="${l.id }" name="ck">
				</td>
				<td>${l.name}</td>
				<td>${l.title }</td>
				<td>${l.start}</td>
				<td>${l.end }</td>
				<td>${l.time }</td>
				<td>
					<button type="button" class="btn btn-success"
						onclick="look(${l.id})">查看</button>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="10">当前是${info.pageNum}/${info.pages }页--共${info.total }条数据
				<a href="list?pageNum=1">首页</a> <a
				href="list?pageNum=${info.prePage }">上一页</a> <a
				href="list?pageNum=${info.nextPage }">下一页</a> <a
				href="list?pageNum=${info.pages }">尾页</a>
			</td>
		</tr>


	</table>
</body>
</html>