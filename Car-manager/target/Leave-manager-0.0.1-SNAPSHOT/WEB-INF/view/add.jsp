<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/resource/bootstrap-treeview/css/bootstrap-treeview.css"
	rel="stylesheet">
<script type="text/javascript"
	src="/resource/bootstrap-treeview/js/bootstrap-treeview.js">
	
</script>
<script type="text/javascript">
function add() {
	$.post(
	  "add",
	  $("form").serialize(),
	  function(obj){
			   if(obj){
				   alert("添加成功");
				   location.href="list";
			   }else{
				   alert("添加失败");
				   return;
			   }
	   },
	   "json"
	)
}
</script>
</head>
<body>
<form action="add" method="post">
   <table>
      <tr>
         <td>申请人:<input type="text" name="name"></td>
      </tr>
      <tr>
         <td>申请部门:<input type="text" name="depart" ></td>
      </tr>
      <tr>
         <td>商品标题:<input type="text" name="title"></td>
      </tr>
      <tr>
         <td>开始时间:<input type="text" name="start"></td>
      </tr>
      <tr>
         <td>结束时间:<input type="text" name="end"></td>
      </tr>
      <tr>
         <td>请假天数:<input type="text" name="days"></td>
      </tr>
      <tr>
         <td>时间:<input type="text" name="time"></td>
      </tr>
      <tr>
         <td>类型:<input type="text" name="type"></td>
      </tr>
      <tr>
         <td>原因:<input type="text" name="context"></td>
      </tr>
      <tr>
         <td><input type="button" value="增加" onclick="add()"></td>
      </tr>
   </table>
</form>
</body>
</html>