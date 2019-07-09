<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!-- saved from url=(0086)${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204 -->
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>${course. courseName}</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/scaffolding.less">
<link href="${pageContext.request.contextPath}/css/achievement/achievementDetail.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/course3.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
</head>
<body>


	<style>
.a {
	width: 313px;
	height: 0;
	background-color: #f0f0f0;
	opacity: 0;
	transition: height 0.2s linear, opacity 0.2s linear;
	-webkit-transition: height 0.2s linear, opacity 0.2s linear;
	/* Safari */
	padding-left: 26px;
	padding-top: 18px;
}

.b {
	width: 187px;
	min-height: 77px;
	height: auto;
	position: relative;
}

.b:hover .a {
	height: 100px;
	opacity: 1;
}

.xiangmu-out .rel-img img {
	width: 100%;
	height: 100%;
	overflow: hidden;
	transition: all 0.5s;
}

.xiangmu-out:hover {
	box-shadow: 0 0 15px grey;
	transform: translate(0, -10px);
}

.xiangmu-out .rel-img {
	overflow: hidden;
}
</style>

	<script type="text/javascript">
		function attention() {
			//alert('3334C5DC8CE2451AA5B8B1C78EFBA204');
			$
					.ajax({
						async : false,
						cache : false,
						url : "${pageContext.request.contextPath}/teacher/ajaxAttentionCourse",
						data : {
							'courseId' : '${course.courseId}'
						},
						type : "POST",
						dataType : "text",
						success : function(result) {
							alert(eval(result));
							if (eval(result) == "关注成功！") {
								$("#attention").html("已关注");
							} else {
								$("#attention").html("关注");
							}
						}
					});
		}
	</script>
    <style>
    header{
    width: 100%;
    height: 143px;
    background-size: cover;
    position: relative;
}
li{
	list-style: none;
}
/*---------------登录------------------*/
header span{
    width: 39%;
    float: right;
    text-align: center;
    line-height: 30px;
    margin-top: 1%;
}
header span li{
    width: 51px;
    float: left;
    color: white;
    margin-right: 1%;
    margin-left:1%;
    line-height: 30px;
}
header span li a{
    color: white;
    
}
header span li:nth-child(1){
    position: relative;
}
.erweima{
    width: 130px;
    position: absolute;
    padding: 1%;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    display: none;
    z-index: 1;
}
.li1:hover .erweima{
    display: block;
}
.spanLi2{
	width: 130px;
    position: absolute;
    padding: 1%;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    left: 963px;
    top: 29px;
    display: none;
    z-index: 1;
}
.spanLi2 li{
    width: 100%;
    height: 30px;
    font-size: 16px;
}
.m:hover .spanLi2{
    display: block;
}
header span li a:hover{
    text-decoration: underline;
}
header span li:nth-child(5){
    position: relative;
}


/*--------------导航---------------*/
header nav {
    width: 49%;
    float: right;
    line-height: 30px;
    right: -3%;
    bottom: 15%;
    position: absolute;
   
}
header nav li{
    float: left;
    margin-left: 0;
    margin-right: 1%;
    width: 13%;
    text-align: center;
    border-radius: 3px;
        height: 34px;
    padding-top: 2px;
}
header nav li a:hover{
    color: blue;
}
header nav li a{
    color: white;
}
.li3{
	float: left;
    margin-left: 0;
    margin-right: 4%;
    background: #fff;
    width: 10%;
    text-align: center;
    border-radius: 3px;
        height: 34px;
    padding-top: 2px;
}
.li3 a{
	    color: #015293;
}
.main_t{
	background: url(${pageContext.request.contextPath}/jsp/jsptestmain_t.jpg) no-repeat;
}
/*----------------资源----------------*/
.main_b_m_t h3{
	margin-left: 10px;
}
.Teaching_plan_bank{
	background: linear-gradient(#FC9033,#FB5130);
	width: 320px;
	height: 150px;
	margin-top: 20px;
	margin-bottom: 10px;
	margin-left: 35px;
	margin-right:0;
	float: left;
	border-radius: 1px;
}
.Teaching_plan_bank:hover{
	box-shadow: 0 0 15px grey;
	transform: translate(0, -10px);
}
.Teaching_Resources{
	background: linear-gradient(#20ABFA,#3070ED);
	width: 320px;
	height: 150px;
	margin-top: 20px;
	margin-bottom: 10px;
	margin-left: 25px;
	margin-right: 0;
	float: left;
	border-radius: 1px;
}
.Teaching_Resources:hover{
	box-shadow: 0 0 15px grey;
	transform: translate(0, -10px);
}
.Multimedia_Resource_Base{
	background: linear-gradient(#7ECEC7,#52A9C2);
	width: 320px;
	height: 150px;
	margin-top: 20px;
	margin-bottom: 10px;
	margin-left: 25px;
	margin-right: 0;
	float: left;
	border-radius: 1px;
}
.Multimedia_Resource_Base:hover{
	box-shadow: 0 0 15px grey;
	transform: translate(0, -10px);
}
.task_library{
	background: linear-gradient(#BFD1AD,#BFD1AD);
	width: 320px;
	height: 150px;
	margin-top: 20px;
	margin-bottom: 10px;
	margin-left: 35px;
	margin-right:0;
	float: left;
	border-radius: 1px;
}
.task_library:hover{
	box-shadow: 0 0 15px grey;
	transform: translate(0, -10px);
}
.Laboratory_Library{
	background: linear-gradient(#ED6EA0,#FF0060);
	width: 320px;
	height: 150px;
	margin-top: 20px;
	margin-bottom: 10px;
	margin-left: 25px;
	margin-right: 0;
	float: left;
	border-radius: 1px;
}
.Laboratory_Library:hover{
	box-shadow: 0 0 15px grey;
	transform: translate(0, -10px);
}
.Course_Design_Library{
	background: linear-gradient(#BF71ED,#8473EF);
	width: 320px;
	height: 150px;
	margin-top: 20px;
	margin-bottom: 10px;
	margin-left: 25px;
	margin-right: 0;
	float: left;
	border-radius: 1px;
}
.Course_Design_Library:hover{
	box-shadow: 0 0 15px grey;
	transform: translate(0, -10px);
}
.main_b_m_t .resourcetype{
	color: white;
	font-size: 20px;
	text-align: center;
	margin-top: 40px;
}
.main_b_m_t .resourcecount{
	color: white;
	font-size: 14px;
	text-align: center;
	margin-top: 20px;
}
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        $(function (){
            var order=1;
            window.setInterval(lunbo,1000);
            function lunbo(){
                if(order==4){
                    order=0;
                }
                $(".banner-img img").eq(order).css("display","block").siblings().css("display","none");
                $(".square .square1").eq(order).css("background-color","#FF6600").siblings().css("background-color","white");
                order++;
            }
        });
    </script>
    <script>
     function dianji(ob){
    	 var topFlag = $(ob).attr("id");
    	 HttpServletRequest.getSession().setAttribute('topFlag', topFlag);
     };
    </script>


	<div style="width: 100%;height: 143px;background-size: cover;">
      <header style="
      	background: url(&#39;${pageContext.request.contextPath}/images/head.png&#39;) no-repeat;
      	background: url(${pageContext.request.contextPath}/images/head.png) no-repeat;
      webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
   background-size: cover;">
   		
          <span style=" padding-left: 20%">
         
         
         
              <li class="li1"><a href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">微信端</a>
                  <div class="erweima">
                      <img src="${pageContext.request.contextPath}/images/erweima.png" alt="">
                  </div>
              </li>
              <li>|</li>
              
              <li><a href="${pageContext.request.contextPath}/jsp/Teacher/index.jsp">登录</a></li>
              <div class="spanLi2">
                      <ul>
                       	<li><a href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">我的作品</a></li>
                        <li><a href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">我的课程</a></li>
                        <li><a href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">我的班级</a></li>
                        <li><a href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">我的主页</a></li>
                      </ul>
                  </div>
             </span>
          <!--导航-->
          <nav style="width: 55%;">
              <ul>
                  <li class="li2" style="font-size: 18px;width: 10%;"><a href="${pageContext.request.contextPath}/main/toMain" onclick="dianji(this)">首页</a></li>
                
                  <li class="li2" style="font-size: 18px;width: 10%;"><a href="${pageContext.request.contextPath}/teacher/courseList" onclick="dianji(this)">课程</a></li> 
                  
                  
             <li class="li2" style="font-size: 18px;width: 10%;"><a href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">互助</a></li> 
                  <!--  <li class="li3"><a href="">互助</a></li> -->
                  
                   <li class="li2" style="font-size: 18px;"><a href="${pageContext.request.contextPath}/achievement/toAchievementMainPage">学生成果</a></li>
                  
                  
                 <li class="li2" style="font-size: 18px;"><a href="${pageContext.request.contextPath}/achievement/toIURPMainPage">产学研项目</a></li>
                  
                  
              <li class="li2" style="font-size: 18px;"><a href="${pageContext.request.contextPath}/turnClass/toTurnClassMainPage">课堂翻转</a></li> 
	              <li class="li2" style="font-size: 18px;"><a href="${pageContext.request.contextPath}/jsp/Teacher/index.jsp">个人中心</a></li>
              </ul>
          </nav>
      </header>
      </div>
	<main>
	<div class="main_t">
		<div class="container-fluid">
			
				<button type="button" class="btn btn-default" id="attention" onclick="attention()">关注</button>
			
			
			<h1>${course. courseName}</h1>
			
			<p>类别：${category}系&nbsp;&nbsp;&nbsp;
				参与人数：${course.courseStudentNum }
				&nbsp;&nbsp;&nbsp;创课时间：${publishTime }</p>
		</div>
	</div>

	<div class="container" style="height: 62px;">
		<div class="main_b_t">
			<nav>
				<ul style="margin-top: 25px; margin-left: -14px;">
					<li style="float: left; margin-right: 25px"><a style="font-size: 22px;" href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204#">课程介绍</a></li>
					<li style="float: left; margin-right: 25px"><a style="font-size: 22px;" href="${pageContext.request.contextPath}/teacher/toCourseResource/0">资源</a></li>
					<%-- <li style="float: left; margin-right: 25px; font-size: 22px;"><a href="${pageContext.request.contextPath}/turnClass/toTurnClassMainPage">翻转课堂</a> --%>
					<li style="float: left; margin-right: 25px; font-size: 22px;"><a href="#turnClass">翻转课堂</a>
					</li><li style="float: left; margin-right: 25px"><a style="font-size: 22px;" href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">挑战</a></li>
					<li style="float: left; margin-right: 25px; margin-bottom: 2%;"><a style="font-size: 22px;" href="${pageContext.request.contextPath}/achievement/selectCategory?category=CourseExpand">课程成果</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<div class="main_b">
		<div class="main_b_t">
			<div class="container" style="margin-bottom: 23px;">
				<div class="container_left" style="width: 56%; position: absolute;">
					<h3>简介</h3>
					<iframe style="margin-left: 12px; margin-top: -2px;"
						src="${pageContext.request.contextPath}/teacher/toCourseIntroduceFrame/${course.courseId }"
						frameborder="0" width="97%" height="100%" scrolling="auto"></iframe>
				</div>
				<div class="container_right">
					<h3>教师团队</h3>
					<iframe style="margin-left: 12px; margin-top: -2px;"
						src="${pageContext.request.contextPath}/teacher/toCourseTeacherFrame/${course.courseId }"
						frameborder="0" width="93%" height="87%" scrolling="auto"></iframe>

				</div>
			</div>
		</div>
		
			<div class="main_b_m">
				<div class="container" style="height: 454px;">
					<div class="main_b_m_t">
						<h3>资源</h3>
						<a target="_blank"  href='${pageContext.request.contextPath}/teacher/toCourseResource/6'>
						<div class="Teaching_plan_bank">
							<p class="resourcetype">教案库</p>
							<p class="resourcecount">共${teaching_planNum }份教案</p>
						</div>
						</a>
						<a target="_blank"  href='${pageContext.request.contextPath}/teacher/toCourseResource/7'>
						<div class="Teaching_Resources">
							<p class="resourcetype">教学资源库</p>
							<p class="resourcecount">共${teaching_resourseNum }份教学资源</p>
						</div>
						</a>
						<a target="_blank"  href='${pageContext.request.contextPath}/teacher/toCourseResource/5'>
						<div class="Multimedia_Resource_Base">
							<p class="resourcetype">多媒体资源库</p>
							<p class="resourcecount">共${mediaRListNum}份多媒体资源</p>
						</div>
						</a>
						<a target="_blank"  href='${pageContext.request.contextPath}/teacher/toCourseResource/8'>
						<div class="task_library">
							<p class="resourcetype">作业库</p>
							<p class="resourcecount">共${taskListNum}份作业</p>
						</div>
						</a>
						<a target="_blank"  href='${pageContext.request.contextPath}/teacher/toCourseResource/9'>
						<div class="Laboratory_Library">
							<p class="resourcetype">实验库</p>
							<p class="resourcecount">共${trialListNum }份实验</p>
						</div>
						</a>
						<a target="_blank"  href='${pageContext.request.contextPath}/teacher/toCourseResource/10'>
						<div class="Course_Design_Library">
							<p class="resourcetype">课程设计库</p>
							<p class="resourcecount">共${curriculum_designNum }份课程设计</p>
						</div>
						</a>
					</div>
					<div style="clear: both;"></div>
					
				</div>
			</div>
			<!-- 翻转课堂显示 -->
				<iframe id="turnClass" width="100%" style="border: none;min-height: 0" src="${pageContext.request.contextPath}/turnClass/toCourseTurnClass/${courseId}"></iframe>
   <script type="text/javascript">
 /*   自适应高度 */
   function setIframeHeight(iframe) {
	   if (iframe) {
	   var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
	   if (iframeWin.document.body) {
	   iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
	   }
	   }
	   };

	   window.onload = function () {
	   setIframeHeight(document.getElementById('turnClass'));
	   };
   </script>
    <style>
    	footer{
    width: 100%;
    background: #333333;
    float:left;
    height: 271.88px;
    margin-top: 38px;
}
footer .footer-img{
    width: 130px;
    height: 130px;
    padding: 5px;
    background: white;
    margin-top: 2%;
    margin-bottom: 2%;
}
footer nav{
    width: 90%;
    height: 60px;
    margin-top: 2%;
    margin-left: 15%;
}
footer nav li{
    float: left;
    width: 11%;
    line-height: 30px;
}
footer nav li a{
    color: white;
}
footer nav li a:hover{
    color: blue;
}
*{
    margin: 0 auto;
    padding: 0;
}
ul li a{
    text-decoration: none;
    
}
li{
    list-style: none;
}
.clear{
    clear: both;
}
    </style>
    
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        $(function (){
            var order=1;
            window.setInterval(lunbo,1000);
            function lunbo(){ 
                if(order==4){
                    order=0;
                }
                $(".banner-img img").eq(order).css("display","block").siblings().css("display","none");
                $(".square .square1").eq(order).css("background-color","#FF6600").siblings().css("background-color","white");
                order++;
            }
        });
    </script>



      <footer>
          <div class="footer-img"><img src="${pageContext.request.contextPath}/images/erweima.png" alt=""></div>
          <div>
              <hr>
              <nav>
                  <ul>
                      <li><a style="text-decoration: none;" href="${pageContext.request.contextPath}/main/toMain">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a></li>
                      <li><a style="text-decoration: none;" href="${pageContext.request.contextPath}/teacher/courseList">课程&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a></li>
                      <li><a style="text-decoration: none;" href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">讨论区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a></li>
                      <li><a style="text-decoration: none;" href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">学生成果&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a></li>
                      <li><a style="text-decoration: none;" href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">产学研项目&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a></li>
                      <li><a style="text-decoration: none;" href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">微信端&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a></li>
                      <li><a style="text-decoration: none;" href="${pageContext.request.contextPath}/teacher/toCourseDetail/3334C5DC8CE2451AA5B8B1C78EFBA204">联系我们&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a></li>
                  </ul>
              </nav>
          </div>
      </footer>
</div></main>
</body>
</html>