<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <title>课程资源页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/scaffolding.less">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/course3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/jsptest/resource.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
  
  <style>
  	.xiangmu-out .rel-img img{
    		width: 100%;
    		height: 100%;
    		overflow: hidden;
    		transition:all 0.5s;
    	}
   .xiangmu-out:hover{
    box-shadow: 0 0 15px grey;
    transform: translate(0,-10px);
}

.xiangmu-out .rel-img{
	overflow: hidden;
}
.daohang{
	font-size: 17px;
    border: 0;
    background: #f0f0f0;
}
  </style>
  
  <script language="javascript">
  	function deleteR(obj){
  		//alert($(obj).attr('id'));
  		var id = $(obj).attr('id')
  		if(confirm("确定要删除数据吗？")){
  		 $.ajax({
			async:false,
			cache:false,
			url:"${pageContext.request.contextPath}/teacher/toDeleteResource/"+id,
			data:{},
			type:"POST",
			dataType:"text",
			success:function(result) {
				alert(eval(result));
				if(eval(result) == "删除成功"){
					location.reload(true);
				}
				else{
					alert("删除失败");
				}
			}
		}); 
  	  }
  	}
  
  </script>
  <script language="javascript">
  	function deleteTR(obj){
  		//alert($(obj).attr('id'));
  		var id = $(obj).attr('id')
  		if(confirm("确定要删除数据吗？")){
  		 $.ajax({
			async:false,
			cache:false,
			url:"${pageContext.request.contextPath}/teacher/toDeleteTaskResource/"+id,
			data:{},
			type:"POST",
			dataType:"text",
			success:function(result) {
				alert(eval(result));
				if(eval(result) == "删除成功"){
					location.reload(true);
				}
				else{
					alert("删除失败");
				}
			}
		}); 
  	  }
  	}
  
  </script>
  <script>
$(document).ready(function() { 
	var cid = "${category}";
	
	if(cid != null && cid != "null" && cid != ""){
		$("#"+cid).css("background","#337ab7");
		$("#"+cid).css("color","white");
	}
	else{
		$("#allSelect").css("background","white");
		$("#allSelect").css("color","#337ab7");
	} 
	});
	
</script>
</head>
<body>
<jsp:include page="/jsp/top.jsp" flush="true" />
<main>
    <div class="main_t">
	<div class="container-fluid">
	<span style="color: white;margin-left: 5%"><a href="${pageContext.request.contextPath}/main/toMain" style="color: white">首页</a>&nbsp;&nbsp;>&nbsp;
				<a href="${pageContext.request.contextPath}/teacher/courseList" style="color: white">课程</a>&nbsp;&nbsp;>&nbsp;
				<a href="<c:url value='/teacher/toCourseDetail/${course.courseId }'/>" style="color: white">${course. courseName}</a>&nbsp;&nbsp;>&nbsp;
					<a href="${pageContext.request.contextPath}/teacher/toCourseResource/0" style="color: white">资源</a>
	</span>
		<c:if test="${ attention != 2 }">
			<button type="button" class="btn btn-default" id="attention"
				onclick="attention()">关注</button>
		</c:if>
		<c:if test="${ attention == 2 }">
			<button type="button" class="btn btn-default" id="attention"
				onclick="attention()">已关注</button>
		</c:if>
		<h1>${course. courseName}</h1>
		<c:if test="${course.fine != null && course.fine != '' }">
			<div
				style="color: red; position: relative; left: 10%; height: 50px; float: left;">
				<span>${course.fine }</span>
			</div>
		</c:if>
		<p>类别：${type}系&nbsp;&nbsp;&nbsp; 参与人数：${course.courseStudentNum }
			&nbsp;&nbsp;&nbsp;创课时间：${publishTime }</p>
	</div>
</div>

	<%-- <div class="main_b_t" style="margin-bottom: 70px;margin-left: 103px;">
				<nav>
					<ul style="    margin-top: 25px;margin-left: -5px;">
						<li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
							href="${pageContext.request.contextPath}/teacher/toCourseResource/0"
							><button id="0" class="btn btn-default daohang">全部</button></a></li>
						<li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
							href="${pageContext.request.contextPath}/teacher/toCourseResource/6"
							><button id="6" class="btn btn-default daohang">教案库</button></a></li>
						<li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
							href="${pageContext.request.contextPath}/teacher/toCourseResource/7"
							><button id="7" class="btn btn-default daohang">教学资源库</button></a></li>
						<li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
							href="${pageContext.request.contextPath}/teacher/toCourseResource/5"
							><button id="5" class="btn btn-default daohang">多媒体资源库</button></a>
						 <li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
							href="${pageContext.request.contextPath}/teacher/toCourseResource/8"
							><button id="8" class="btn btn-default daohang">作业库</button></a></li> 
						 <li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
							href="${pageContext.request.contextPath}/teacher/toCourseResource/9"
							><button id="9" class="btn btn-default daohang">实验库</button></a></li>
						<li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
							href="${pageContext.request.contextPath}/teacher/toCourseResource/10"
							><button id="10" class="btn btn-default daohang">课程设计库</button></a></li> 
							<c:if test="${isTeacher == 1 && resourceName !='全部' }">
							<li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
							href="${pageContext.request.contextPath}/teacher/toPublishResource/${category }/${course.courseId}"
							><button id="10" class="btn btn-default daohang">发布资源</button></a></li>
							</c:if> 
					</ul>
				</nav>
			</div> --%>
			<div class="main_m">
      	<ul class="nav nav-pills col-md-10">
            <li role="presentation" ><a id="0" href="${pageContext.request.contextPath}/teacher/toCourseResource/0">全部</a></li>
            <li role="presentation"><a id="6" href="${pageContext.request.contextPath}/teacher/toCourseResource/6">教案库</a></li>
            <li role="presentation"><a id="7" href="${pageContext.request.contextPath}/teacher/toCourseResource/7">教学资源库</a></li>
            <li role="presentation"><a id="5" href="${pageContext.request.contextPath}/teacher/toCourseResource/5">多媒体资源库</a></li>
            <li role="presentation"><a id="8" href="${pageContext.request.contextPath}/teacher/toCourseResource/8">作业库</a></li>
            <li role="presentation"><a id="9" href="${pageContext.request.contextPath}/teacher/toCourseResource/9">实验库</a></li>
            <li role="presentation"><a id="10" href="${pageContext.request.contextPath}/teacher/toCourseResource/10">课程设计库</a></li>
            <c:if test="${isTeacher == 1 && resourceName !='全部' }">
            	<li role="presentation"><a id="10" href="${pageContext.request.contextPath}/teacher/toPublishResource/${category }/${course.courseId}">发布资源</a></li>
				<%-- <li style="float: left;margin-right: 25px"><a style="font-size: 22px;"
					href="${pageContext.request.contextPath}/teacher/toPublishResource/${category }/${course.courseId}"
				><button id="10" class="btn btn-default daohang">发布资源</button></a></li> --%>
			</c:if>
        </ul>
    </div>
</main>
<div class="main2" style="height: auto;width: auto;min-height: 800px;margin-left: -43px;">
	<div class="mian2_content" style="height: auto;width: auto;min-height: 170px;margin-left: 140px;margin-top: 0">
			<c:if test="${resource != null }">
			<c:forEach items="${resource }" var="re" varStatus="status">
			<a href="${pageContext.request.contextPath}/teacher/toSearchResource/${re.resourceId }">
			<div class="resource col-md-3" id="resource_L">
            	<div class="resource_t col-md-12">
               		<p><span class="glyphicon glyphicon-stop" aria-hidden="true" id="tag"></span>&nbsp;&nbsp;多媒体库</p>    
            	</div>
            	<div class="resource_m col-md-12">
            		<p class="tile">${re.resourceName }</p>
            		<p class="content"><%-- ${re.resourceDetail } --%>点击查看资源详情...</p> 
            	</div>
            	<div class="resource_b col-md-12"> 
            		<span class="publish col-md-8">发布人：${re.publisherId }&nbsp;&nbsp;&nbsp;&nbsp;${time[status.index] }</span><span class="quote col-md-4">已下载：${task.useNum }</span>
            	</div>
        	</div>
        	</a>
        	</c:forEach>
		</c:if>

		<c:if test="${taskList != null }">
			<c:forEach items="${taskList }" var="task" varStatus="status">
			<a href="${pageContext.request.contextPath}/teacher/toSearchTaskResource/${task.taskId }">
			<c:if test="${task.taskType == 'work' }">
				<div class="resource col-md-3" id="resource_L">
            		<div class="resource_t col-md-12">
           			 	<p><span class="glyphicon glyphicon-stop"   aria-hidden="true" id="tag2"></span>&nbsp;&nbsp;作业库</p>    
            		</div>
            		<div class="resource_m col-md-12">
            			<p class="tile">${task.taskTitle }</p>
            			<p class="content">点击查看资源详情...</p> 
            		</div>
            		<div class="resource_b col-md-12"> 
            			<span class="publish col-md-8">发布人：${task.publisherId }&nbsp;&nbsp;&nbsp;&nbsp;${time[status.index] }</span><span class="quote col-md-4">已下载：2${task.useNum }次</span>
            		</div>
        		</div>
					</c:if>
					<c:if test="${task.taskType == 'trial' }">
						<div class="resource col-md-3" id="resource_L">
            		<div class="resource_t col-md-12">
           			 	<p><span class="glyphicon glyphicon-stop"   aria-hidden="true" id="tag3"></span>&nbsp;&nbsp;实验库</p>    
            		</div>
            		<div class="resource_m col-md-12">
            			<p class="tile">${task.taskTitle }</p>
            			<p class="content">点击查看资源详情...</p> 
            		</div>
            		<div class="resource_b col-md-12"> 
            			<span class="publish col-md-8">发布人：${task.publisherId }&nbsp;&nbsp;&nbsp;&nbsp;${time[status.index] }</span><span class="quote col-md-4">已下载：2${task.useNum }次</span>
            		</div>
        		</div>
					</c:if>
					<c:if test="${task.taskType == 'curriculum_design' }">
						<div class="resource col-md-3" id="resource_L">
            		<div class="resource_t col-md-12">
           			 	<p><span class="glyphicon glyphicon-stop"   aria-hidden="true" id="tag4"></span>&nbsp;&nbsp;课程设库</p>    
            		</div>
            		<div class="resource_m col-md-12">
            			<p class="tile">${task.taskTitle }</p>
            			<p class="content">点击查看资源详情...</p>
            		</div>
            		<div class="resource_b col-md-12"> 
            			<span class="publish col-md-8">发布人：${task.publisherId }&nbsp;&nbsp;&nbsp;&nbsp;${time[status.index] }</span><span class="quote col-md-4">已下载：2${task.useNum }次</span>
            		</div>
        		</div>
				</c:if>
        	</a>
			</c:forEach>
		</c:if>
	</div>
</div>
<jsp:include page="/jsp/footer.jsp" flush="true"/>
</body>
</html>