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
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/student_personal_center/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/student_personal_center/css/index.css" type="text/css" />
		<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body class="row">
	<jsp:include page="/jsp/top.jsp" flush="true"/>
		<div class="main_left row col-md-3">
			<div class="head_sculpture col-md-10">
				<div class="head_sculpture_inner">
					<img src="img/uploads/avatar/avatar-195x195.png" class="center-block " alt="" />
					<p class="petname">${student.studentName }</p>
					<p class="title">${student.studentId }</p>
				</div>	
			</div>	
			<div class="head_sculpture_bottom col-md-10">   
				<a href="#">
					<div class="modify_T col-md-12">
					修改头像
				    </div>
				</a>
				<a href="#">
					<div class="modify_B col-md-12 ">
						修改个人信息	
					</div>
				</a>
			</div>
		</div>
		<div class="main_right col-md-9">
			<div class="nav row">
				<div class="nav_petname col-md-2">
					<a href="#">
						<img src="img/uploads/brand/logo.svg" alt="" />
						<span>${student.studentId }</span>
					</a>
				</div>
				<div class="nav_list col-md-10">
					<nav>
						<ul>
							<li><a href="${pageContext.request.contextPath}/student/toStudentMyTask">我的任务</a></li>
							<li><a href="${pageContext.request.contextPath}/student/toStudentMyCourse">我的课程</a></li>
							<li><a href="myAchievements.html">我的成果</a></li>
							<li><a href="myChallenges.html">我的挑战</a></li>
							<li><a href="myFlip.html">我的翻转</a></li>
							<li><a href="myDiscussion.html">我的讨论</a></li>
							<li><a href="${pageContext.request.contextPath}/student/toStudentMyInfo">我的信息</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="text">
				<h2>关于  我</h2>
				<div class="text_introduction">
					<p>
						<b>大家好，我是${student.studentName }。</b><br />
						巴拉巴拉.
					</p>
				</div>
				<hr />
				<div class="text_personalInformation">
					<h4>基本信息</h4>
					<dl class="dl-horizontal col-md-4">
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>学号</dt>
						<dd>${student.studentId }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>昵称</dt>
						<dd>${student.studentNickName }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>姓名</dt>
						<dd>${student.studentName }</dd>
					</dl>
					<dl class="dl-horizontal col-md-4">
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>性别</dt>
						<dd>${student.studentGender }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>所属班级</dt>
						<dd>${student.classNum }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>所属专业</dt>
						<dd>${category.categoryName }</dd>
					</dl>
					<dl class="dl-horizontal col-md-4">
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>联系方式</dt>
						<dd>${student.telephone }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>所属系部</dt>
						<dd>${student.studentCategory }</dd>
					</dl>
				</div>
				<hr />
				<div class="text_achievemint">
					<h4>学习成果</h4>
					<p>
						<ul>
							<li><span class="glyphicon glyphicon-ok"></span>贪吃蛇大作战C#小游戏</li>
							<li><span class="glyphicon glyphicon-ok"></span>冉冉升起的太阳</li>
							<li><span class="glyphicon glyphicon-ok"></span>简单的AR图形建模</li>
						</ul>
					</p>
				</div>
				<hr />
				<div class="text_project">
					<h4>产学研项目</h4>
					<p>无</p>
				</div>
				<hr />
				<div class="text_award">
					<h4>获奖情况</h4>
					<p>
						<ul>
							<li><span class="glyphicon glyphicon-thumbs-up"></span>2019年荣获互联网+创新设计大赛</li>
							<li><span class="glyphicon glyphicon-thumbs-up"></span>2018年获得国家一等奖</li>
							<li><span class="glyphicon glyphicon-thumbs-up"></span>2017年获得全国大学生计算机大赛</li>
						</ul>
					</p>
				</div>
			</div>
		</div>
		<div class="footer col-md-12"></div>
	</body>
</html>
