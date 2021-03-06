<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/teacher_personal_center/css/index.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/teacher_personal_center/css/bootstrap.min.css" />
	</head>
	<body class="row">
	<jsp:include page="/jsp/top.jsp" flush="true"/>
		<div class="main_left col-md-3">
			<div class="head_sculpture col-md-10">
				<div class="head_sculpture_inner">
					<c:if test="${empty item.faceImg }">
								<img data-src="holder.js/140x140" class="img-circle" alt="140x140" 
									src="${pageContext.request.contextPath}/img/facedownload.jpg" data-holder-rendered="true" style="width: 140px; height: 140px;">
						
							</c:if>
							<c:if test="${not empty item.faceImg }">
								<img data-src="holder.js/140x140" class="img-circle" alt="140x140" 
									src="${pageContext.request.contextPath}/jsp/showImg.jsp?path=${teacher.faceImg }" data-holder-rendered="true" style="width: 140px; height: 140px;">
						
							</c:if>
					<p class="petname">${teacher.teacherName }</p>
					<p class="title">${teacher.professionalTitles }</p>
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
						<span>${teacher.teacherName }</span>
					</a>
					
				</div>
				<div class="nav_list col-md-10">
					<nav>
						<ul>
							<li><a href="${pageContext.request.contextPath}/teacher/toTeacherMyCourse">我的课程</a></li>
							<li><a href="${pageContext.request.contextPath}/teacher/toTeacherMyClass">我的班级</a></li>
							<li><a href="myachievement.html">我的成果</a></li>
							<li><a href="myappraise.html">我的评价</a></li>
							<li><a href="mydiscussion.html">我的讨论</a></li>
							<li><a href="myteam.html">我的团队</a></li>
							<li><a href="${pageContext.request.contextPath}/teacher/toTeacherMyInfo">我的信息</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="text">
				<h2>我的信息</h2>	
				<div class="text_introduction">
					<p>
						<b>关于   我</b><br />
						巴拉巴拉
					</p>
				</div>
				<hr />
				<div class="text_personalInformation">
					<h4>基本信息</h4>
					<dl class="dl-horizontal col-md-4">
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>姓名</dt>
						<dd>${teacher.teacherName }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>性别</dt>
						<dd>${teacher.teacherGender }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>出生年月</dt>
						<dd>1985年1月12日</dd>
					</dl>
					<dl class="dl-horizontal col-md-4">
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>学历</dt>
						<dd>${teacher.educationBackground }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>所属系部</dt>
						<dd>${teacher.teacherCategory }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>职称</dt>
						<dd>${teacher.professionalTitles }</dd>
					</dl>
					<dl class="dl-horizontal col-md-4">
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>联系方式</dt>
						<dd>${teacher.telephone }</dd>
						<dt><span class="glyphicon glyphicon-star" aria-hidden="true"></span>电子邮箱</dt>
						<dd>${teacher.email }</dd>
					</dl>
				</div>
				<hr />
				<!--<div class="text_achievemint">
					<h4>学习成果</h4>
					<p>
						<ul>
							<li><span class="glyphicon glyphicon-ok"></span>贪吃蛇大作战C#小游戏</li>
							<li><span class="glyphicon glyphicon-ok"></span>冉冉升起的太阳</li>
							<li><span class="glyphicon glyphicon-ok"></span>简单的AR图形建模</li>
						</ul>
					</p>
				</div>-->
				<!--<hr />-->
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
							<li><span class="glyphicon glyphicon-thumbs-up"></span>2017年获得全国大学生计算机大赛优秀指导教师</li>
						</ul>
					</p>
				</div>
			</div>
		</div>
		<div class="footer col-md-12"></div>
			</div>

        </div>
        <jsp:include page="/jsp/footer2.jsp" flush="true"/>
	</body>
</html>
