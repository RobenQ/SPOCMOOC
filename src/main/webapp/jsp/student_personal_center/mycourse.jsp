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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jsp/student_personal_center/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/student_personal_center/css/mycourse.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	        function toShowMyJoin(){
            var r1=document.getElementById("tab1");
            var r2=document.getElementById("tab2");
          
            r1.style.display="block";
            r2.style.display="none";
           
        }
	      function toShowMyInterset(){
            var r1=document.getElementById("tab1");
            var r2=document.getElementById("tab2");
           
            r1.style.display="none";
            r2.style.display="block";
            
        }
	      
</script>
</head>
<body class="row">
<jsp:include page="/jsp/top.jsp" flush="true"/>
	<div class="main_left row col-md-3">
		<div class="head_sculpture col-md-10">
			<div class="head_sculpture_inner">
				<img src="img/uploads/avatar/avatar-195x195.png"
					class="center-block " alt="" />
				<p class="petname">${student.studentName }</p>
				<p class="title">${student.studentId }</p>
			</div>
		</div>
		<div class="head_sculpture_bottom col-md-10">
			<a href="#">
				<div class="modify_T col-md-12">修改头像</div>
			</a> <a href="#">
				<div class="modify_B col-md-12 ">修改个人信息</div>
			</a>
		</div>
	</div>
	<div class="main_right col-md-9">
		<div class="nav row">
			<div class="nav_petname col-md-2">
				<a href="#"> <img src="img/uploads/brand/logo.svg" alt="" /> <span>${student.studentId
						}</span>
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
			<h2>我的课程</h2>
			<ul id="tabs">
				<li><a href="#" onclick="toShowMyJoin()">我加入的课程</a></li>
				<li><a href="#" onclick="toShowMyInterset()">我关注的课程</a></li>
			</ul>
			<div id="content">
				<div id="tab1" style="display: block;">
					<c:forEach items="${virtualClassList }" var="item"
						varStatus="status">
						<div class="course">
							<div class="img">
								<c:if test="${empty item.faceImg }">
								<a href="${pageContext.request.contextPath}/student/toClassDetail?virtualClassNum=${item.virtualClassNum }&virtualClassName=${item.virtualClassName }&courseName=${item.virtualCourseName }">
								
									<img
										src="${pageContext.request.contextPath}/img/workType/classDefault.jpg"
										alt="" style="width: 100%; height: 100%;" />
										</a>
								</c:if>
								<c:if test="${not empty item.faceImg }">
									<a href="${pageContext.request.contextPath}/student/toClassDetail?virtualClassNum=${item.virtualClassNum }&virtualClassName=${item.virtualClassName }&courseName=${item.virtualCourseName }">
								
									<img
										src="${pageContext.request.contextPath}/jsp/showImg.jsp?path=${item.faceImg }"
										alt="" style="width: 100%; height: 100%;" />
										</a>
								</c:if>
							</div>
							<div class="coursemessage col-md-8">
							
								<h3>
								<a href="${pageContext.request.contextPath}/student/toClassDetail?virtualClassNum=${item.virtualClassNum }&virtualClassName=${item.virtualClassName }&courseName=${item.virtualCourseName }">
								${item.virtualCourseName }
								</a></h3>
								<p>
									授课班级：
									<c:forEach items="${item.realClassList }" var="realClass">
	            		${realClass.realClassNum }班<span>&nbsp;&nbsp;&nbsp;</span>
									</c:forEach>
								</p>
								<p>班级名称：${item.virtualClassName }</p>
								<p>开设学期：${item.term }</p>
							</div>
							<div class="modify_message col-md-1"></div>
						</div>
						<hr />
					</c:forEach>

				</div>
				<div id="tab2"  style="display: none;">
					<div class="course">
						<div class="img">
							<img src="img/tu6.jpg" alt="" />
						</div>
						<div class="coursemessage col-md-8">
							<h3>数据结构</h3>
							<p>课程概述：数据结构一门逻辑性联系较强的学科，在本学期的教学过程中，我将以案例为主进行教学，带领学生进行实践操作。</p>
							<p>授课教师：刘杰</p>
							<p>开设学期：2019-2020学年第一学期</p>
						</div>
						<div class="modify_message col-md-1"></div>
					</div>
					<hr />
				</div>
				
			</div>
			<p id="about">&nbsp;</p>
		</div>
	</div>
	</div>
	<div class="footer col-md-12"></div>
</body>
</html>
