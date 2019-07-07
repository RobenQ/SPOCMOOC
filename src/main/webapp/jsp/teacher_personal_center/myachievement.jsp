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
		<link rel="stylesheet" href="css/myachievement.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
	</head>
	<body class="row">
		<div class="main_left col-md-3">
			<div class="head_sculpture col-md-10">
				<div class="head_sculpture_inner">
					<img src="img/avatar-195x195.png" class="center-block " alt="" />
					<p class="petname">刘杰</p>
					<p class="title">教授</p>
				</div>	
			</div>	
			<div class="head_sculpture_bottom col-md-10">   
				<a href="#"><div class="modify_T col-md-12">
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
					<a href="index.html">
						<img src="img/logo.svg" alt="" />
						<span>刘杰</span>
					</a>
					
				</div>
				<div class="nav_list col-md-10">
					<nav>
						<ul>
							<li><a href="mycourse.html">我的课程</a></li>
							<li><a href="myclass.html">我的班级</a></li>
							<li><a href="myachievement.html">我的成果</a></li>
							<li><a href="myappraise.html">我的评价</a></li>
							<li><a href="mydiscussion.html">我的讨论</a></li>
							<li><a href="myteam.html">我的团队</a></li>
							<li><a href="index.html">我的信息</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="text">
				<h2>我的成果</h2>	
				<div id="content">
				正在维护
				</div>	
			</div>

        </div>
	</body>
</html>
