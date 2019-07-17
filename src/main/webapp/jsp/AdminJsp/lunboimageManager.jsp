<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="${pageContext.request.contextPath}/css/backstagemanager/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/css/backstagemanager/customer.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/css/backstagemanager/bootstrap-table.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath}/js/backstagemanager/jquery-3.2.1.js"></script>
<script
	src="${pageContext.request.contextPath}/js/backstagemanager/bootstrap.js"></script>
<script
	src="${pageContext.request.contextPath}/js/backstagemanager/bootstrap-table.js"></script>
<script
	src="${pageContext.request.contextPath}/js/backstagemanager/bootstrap-table-zh-CN.js"></script>
<title>后台管理</title>
</head>
<body style="background-color: #f8f8f8">
	<nav class="navbar navbar-default" role="navigation"
		style="margin: 0px; background-color: white;">
		<div class="container-fluid">
			<div class="navbar-header col-md-2 text-center">
				<h3>后台管理</h3>
			</div>
			<div class="navbar-header col-md-8"></div>
			<div class="col-md-2">
				<ul class="nav navbar-nav pull-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">管理员：${sessionScope.admin.adminUsername}<b
							class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a
								href="${pageContext.request.contextPath}/admin/toAdminInfo">设置</a></li>
							<li class="divider"></li>
							<li><a
								href="${pageContext.request.contextPath}/admin/logout">登出</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="content">
		<div class="leftList col-md-2"
			style="padding: 0px; margin-top: 1%; background-color: white;">
			<nav class="navbar-default navbar-side" role="navigation"
				style="background-color: white;">
				<ul class="nav" id="main-menu">
					<li><a
						href="${pageContext.request.contextPath}/admin/toTeacherManager"
						class="waves-effect waves-dark" style="font-size: 20px">教师信息管理</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/admin/toStudentManager"
						class="waves-effect waves-dark" style="font-size: 20px">学生信息管理</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/admin/toCategoryManager"
						class="waves-effect waves-dark" style="font-size: 20px">课程类型管理</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/admin/toAchievementManager"
						class="waves-effect waves-dark" style="font-size: 20px">成果管理</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/toRealClassManager"
						class="waves-effect waves-dark" style="font-size: 20px;">自然班管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/toTerm"
						class="waves-effect waves-dark" style="font-size: 20px;">学期管理</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/toAcademicManager"
						class="waves-effect waves-dark"
						style="font-size: 20px; background-color: #f8f8f8">学术委员管理</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/toDepartmentManager"
						class="waves-effect waves-dark" style="font-size: 20px;">学术委员会管理</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/toIndexLunboImagesManager"
						class="waves-effect waves-dark" style="font-size: 20px">首页轮播图管理</a>
					</li>
				</ul>
			</nav>
		</div>
		<div class="RightContent col-md-10" style="margin-top: 1%;">
			<iframe width="100%" height="100%" src="${pageContext.request.contextPath}/admin/toIndexLunboImagesManager2"></iframe>
		</div>
	</div>

	<div class="modal" id="add" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加学术委员信息</h4>
				</div>
				<div class="modal-body">
					<div class="modal-body">
						<form id="commitCategory" name="commitCategory"
							action="${pageContext.request.contextPath}/admin/addAcademic"
							method="post">
							<div class="form-group">
								<label for="selectDe" class="control-label">学术委员会</label> <select
									class="selectpicker show-tick form-control"
									data-live-search="true" name=selectAdd id="selectAdd">
									<c:forEach items="${departmentList }" var="de"
										varStatus="status">
										<option value="${de.num }">${de.name }</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="categoryId" class="control-label">姓名</label> <input
									type="text" class="form-control" id="addnName" name="addName">
							</div>
							<div class="form-group">
								<label for="categoryName" class="control-label">职称</label> <input
									type="text" class="form-control" id="addPro" name="addPro">
							</div>
							<div class="form-group">
								<div class="row">
									<div class='col-sm-6'>
										<div class="form-group">
											<label>认定时间：</label> <input type="date" id="addTime"
												name="addTime" value="2015-09-04" />
										</div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" style="margin-left: 2%">关闭</button>
								<button type="submit" class="btn btn-primary">提交</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal" id="Edit" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">编辑学术委员信息</h4>
				</div>
				<div class="modal-body">
					<div class="modal-body">
						<form
							action="${pageContext.request.contextPath}/admin/updateAcademic">
							<div class="form-group">
								<label for="editName" class="control-label">姓名</label> <input
									type="text" class="form-control" id="editName" name="editName">
								<input type="text" class="form-control" id="editId"
									name="editId" style="display: none">
							</div>
							<div class="form-group">
								<label for="editPro" class="control-label">职称</label> <input
									type="text" class="form-control" id="editPro" name="editPro">
							</div>
							<div class="form-group">
								<label for="selectDe" class="control-label">系部</label> <select
									class="selectpicker show-tick form-control"
									data-live-search="true" name="editSe" id="editSe">
									<c:forEach items="${departmentList }" var="de"
										varStatus="status">
										<option value="${de.num }">${de.name }</option>
									</c:forEach>
								</select>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" style="margin-left: 2%">关闭</button>
								<button type="submit" class="btn btn-primary">提交</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>