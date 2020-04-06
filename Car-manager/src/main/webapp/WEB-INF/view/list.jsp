<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript">
function qx() {
	$("[name=ck]").attr("checked",true)
}
function look(id) {
	location.href="look?id="+id
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
	<table  class="table table-dark">
		<tr>
			<td><input type="checkbox" id="ids" onclick="qx()"><button>全选</button></td>
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
				<td>${l.days }</td>
				<td>${l.time }</td>
				<td>
					<button type="button"class="btn btn-secondary"
						onclick="look(${l.id})">查看</button>
				</td>
			</tr>
		</c:forEach>
		<tr align="center">
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