<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../css/lunbomannage.css"/>
		<script src="../js/lunbomanage.js" type="text/javascript" charset="utf-8"></script>
		<title>轮播图管理</title>
	</head>
	<body>
		<table border="1px" cellspacing="0" cellpadding="0">
			<tr>
				<th colspan="4">轮播图管理</th>
			</tr>
			<tr>
				<td id="th1">图片顺序</td>
				<td id="th2">预览</td>
				<td id="th3">修改</td>
				<td id="th4">操作</td>
			</tr>
			<tr class="tr">
				<td class="order">图一</td>
				<td class="imgtd">
					<div class="img">
						<img src="${pageContext.request.contextPath}/images/${lunboImages[0].name}" >
					</div>
				</td>
				<td class="file">
					<input type="file" name="image" value=""/>
				</td>
				<td class="active">
					<button type="button" onclick="ch(this)">保存更改</button>
					<div class='container' style="width: 150px; height: 20px; background-color: gray;margin-top: 30px;
						margin-left: 20%; border-radius: 10px;">
							<span id="progress" style="height: 20px; background-color: orange;display: inline-block;border-radius: 10px;"></span>
					</div>
				</td>
			</tr>
			<tr class="tr">
				<td class="order">图二</td>
				<td class="imgtd">
					<div class="img">
						<img src="${pageContext.request.contextPath}/images/${lunboImages[1].name}" >
					</div>
				</td>
				<td class="file">
						<input type="file" name="image" value=""/>
				</td>
				<td class="active">
					<button type="button" onclick="ch(this)">保存更改</button>
					<div class='container' style="width: 150px; height: 20px; background-color: gray;margin-top: 30px;
						margin-left: 20%; border-radius: 10px;">
							<span id="progress" style="height: 20px; background-color: orange;display: inline-block;border-radius: 10px;"></span>
					</div>
				</td>
			</tr>
			<tr class="tr">
				<td class="order">图三</td>
				<td class="imgtd">
					<div class="img">
						<img src="${pageContext.request.contextPath}/images/${lunboImages[2].name}" >
					</div>
				</td>
				<td class="file">
					<input type="file" name="image" value=""/>
				</td>
				<td class="active">
					<button type="button" onclick="ch(this)">保存更改</button>
					<div class='container' style="width: 150px; height: 20px; background-color: gray;margin-top: 30px;
						margin-left: 20%; border-radius: 10px;">
							<span id="progress" style="height: 20px; background-color: orange;display: inline-block;border-radius: 10px;"></span>
					</div>
				</td>
			</tr>
			<tr class="tr">
				<td class="order">图四</td>
				<td class="imgtd">
					<div class="img" >
						<img src="${pageContext.request.contextPath}/images/${lunboImages[3].name}" >
					</div>
				</td>
				<td class="file">
					<input type="file" name="image" value=""/>
				</td>
				<td class="active">
					<button type="button" onclick="ch(this)">保存更改</button>
					<div class='container' style="width: 150px; height: 20px; background-color: gray;margin-top: 30px;
						margin-left: 20%; border-radius: 10px;">
							<span id="progress" style="height: 20px; background-color: orange;display: inline-block;border-radius: 10px;"></span>
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
