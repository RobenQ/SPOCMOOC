<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/student_personal_center/css/mytask.css" type="text/css" />
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"
	type="text/javascript" charset="utf-8"></script>
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
				<h2>我的任务</h2>
				<c:forEach items="${taskListAll }" var="task">
		<div class="contentlist" style="padding-top: 10px;padding-bottom: 10px;padding-left: 20px;">
			<div class="row  col-lg-24">
			  <div class=" col-lg-3" style="float: left;width: 16%">
				<a target="_top"  href="${pageContext.request.contextPath}/student/toTaskDetail?taskId=${task.taskId }&virtualClassNum=${task2virtualClassNum[task.taskId] }&virtualClassName=${task2virtualClassName[task.taskId] }&courseName=${task2virtualClassCourseName[task.taskId] }" class="thumbnail">
				<c:if test="${task.taskType eq 'work' }">
				    <img src="${pageContext.request.contextPath}/img/workType/作业.ico" alt=""style="height: 100px; width: 100px; display: block;">
				  </c:if>
				  <c:if test="${task.taskType eq 'course_design' }">
				    <img src="${pageContext.request.contextPath}/img/workType/课设.ico" alt=""style="height: 100px; width: 100px; display: block;">
				  </c:if>
				  <c:if test="${task.taskType eq 'trial' }">
				    <img src="${pageContext.request.contextPath}/img/workType/实验.ico" alt=""style="height: 100px; width: 100px; display: block;">
				  </c:if>
				</a>
			  </div>
			  <div class="col-lg-21" style="float: left; height: 100px;margin-top: 3px;width: 70%">
				  <div class="listtitle" style="font-size: 20px;margin-top: 15px;margin-left: 10px;font-weight: bold;" >
				  		<a target="_top" href="${pageContext.request.contextPath}/student/toTaskDetail?taskId=${task.taskId }&virtualClassNum=${task2virtualClassNum[task.taskId] }&virtualClassName=${task2virtualClassName[task.taskId] }&courseName=${task2courseName[task.taskId] }" > 	${task.taskTitle }</a>
				  		<c:if test="${identify eq 'student' }">
						<c:if test="${not empty upTaskDetail2taskList[task.taskId] || not empty accessoriesName2taskList[task.taskId] }">
								<!-- <button type="button" class="btn btn-info"disabled="disabled" style="margin-left: 200px;float: left;">已提交</button> -->
								
								
								<button class="proplenum" style="font-size: 10px;color: #999999;background-color: #FFFFFF;margin-left: 20px;padding: 0;   border: 1px solid #FFC900;  -moz-border-radius: 15px;-webkit-border-radius: 15px;border-radius:15px;">
						&nbsp;&nbsp;已提交&nbsp;&nbsp;
					</button>
								<c:if test="${not empty grade2taskList[task.taskId] }">
									<%-- 	<button type="button" class="btn btn-info"disabled="disabled" style="margin-left: 200px;float: left;">已批阅</button>
										<button type="button" class="btn btn-info"disabled="disabled" style="margin-left: 200px;float: left;">${grade2taskList[task.taskId] } 分</button>
								 --%>
								<button class="proplenum" style="font-size: 10px;color: #999999;background-color: #FFFFFF;margin-left: 20px;padding: 0;   border: 1px solid #00FFFF;  -moz-border-radius: 15px;-webkit-border-radius: 15px;border-radius:15px;">
						&nbsp;&nbsp;已批阅:${grade2taskList[task.taskId] } 分&nbsp;&nbsp;
					</button>
								
								
								</c:if>
								<c:if test="${ empty grade2taskList[task.taskId] }">
									<!-- <button type="button" class="btn btn-info"disabled="disabled" style="margin-left: 200px;float: left;">等待批阅</button> -->
									<button class="proplenum" style="font-size: 10px;color: #999999;background-color: #FFFFFF;margin-left: 20px;padding: 0;   border: 1px solid #00FFFF;  -moz-border-radius: 15px;-webkit-border-radius: 15px;border-radius:15px;">
						&nbsp;&nbsp;等待批阅&nbsp;&nbsp;
					</button>
								</c:if>
						</c:if>
					</c:if>
				  	
				  		<c:if test="${isEnd2taskList[task.taskId] }">
				  			<button type="button" class="btn btn-success"disabled="disabled" style="float:right;">正在进行</button>
				  			<!-- <span style="float: left;">距离结束还剩 ${timeEnd2taskList[task.taskId] }</span>   -->
				  		</c:if>
				  		<c:if test="${!isEnd2taskList[task.taskId] }">
				  			<button type="button" class="btn btn-danger"disabled="disabled" style="float:right;">已结束</button>
				  		</c:if>
					
					
					
				  </div>
				  <div class="listmessage" style="margin-left: 10px;font-size: 10px;margin-top: 20px;color: #999999;">
					  发布时间：${fn:substring( task.publishTime ,0 , 16)}&nbsp;&nbsp;&nbsp;&nbsp;
					  <c:if test="${isEnd2taskList[task.taskId] }">
					距离结束还剩 ： <span style="color:red">${timeEnd2taskList[task.taskId] }</span> 
					  </c:if>
				  	<button class="proplenum" style="background-color: #FFFFFF;margin-left: 20px;padding: 0;   border: 1px solid #00FFFF;  -moz-border-radius: 15px;-webkit-border-radius: 15px;border-radius:15px;">
						&nbsp;&nbsp;提交人数/总人数：${task.upNum }/${taskId2studentNum[task.taskId] }&nbsp;&nbsp;
					</button>
				  </div>
			  </div>
			</div>
			<hr>
		</div>
		
		</c:forEach>
			</div>
		</div>
	</body>
</html>
