<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>课程资源页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/jsptest/resource.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
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
		$("#"+cid).css("background","#015293");
		$("#"+cid).css("color","#fff");
	}
	else{
		$("#allSelect").css("background","#015293");
		$("#allSelect").css("color","#fff");
	} 
	});
	
</script>
</head>
<body>
<jsp:include page="/jsp/top.jsp" flush="true" />
<!-- <header>
    <div class="container-fluid">
        <nav>
            <ul class="nav nav-pills">
                <li role="presentation" class="active"><a href="#">首页</a></li>
                <li role="presentation"><a href="#">课程</a></li>
                <li role="presentation"><a href="#">讨论区</a></li>
                <li role="presentation"><a href="#">学生成果</a></li>
                <li role="presentation"><a href="#">产学研项目</a></li>
            </ul>
        </nav>
    </div>
</header> -->
<main class="row">
    <div class="main_t container-fluid">
        <div class="main_t_l col-md-6">
            <h1>${course. courseName}</h1>
            <p class="p1">类别：${type}系</p>
            <p class="p2">参与人数：${course.courseStudentNum }  &nbsp;&nbsp;&nbsp;创课时间：${publishTime }</p>
        </div>
        <div class="main_t_r col-md-6">
            <c:if test="${ attention != 2 }">
			<button type="button" class="btn btn-default" id="attention"
				onclick="attention()">关注</button>
		</c:if>
		<c:if test="${ attention == 2 }">
			<button type="button" class="btn btn-default" id="attention"
				onclick="attention()">已关注</button>
		</c:if>
        </div>
    </div>
    <div class="main_m">
        <ul class="nav nav-pills col-md-10">
            <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/teacher/toCourseResource/0">全部</a></li>
            <li role="presentation"><a href="${pageContext.request.contextPath}/teacher/toCourseResource/6">教案库</a></li>
            <li role="presentation"><a href="${pageContext.request.contextPath}/teacher/toCourseResource/7">教学资源库</a></li>
            <li role="presentation"><a href="${pageContext.request.contextPath}/teacher/toCourseResource/5">多媒体资源库</a></li>
            <li role="presentation"><a href="${pageContext.request.contextPath}/teacher/toCourseResource/8">作业库</a></li>
            <li role="presentation"><a href="${pageContext.request.contextPath}/teacher/toCourseResource/9">实验库</a></li>
            <li role="presentation"><a href="${pageContext.request.contextPath}/teacher/toCourseResource/10">课程设计库</a></li>
        </ul>
    </div>
    <div class="main_b">
        <div class="resource col-md-3" id="resource_L">
            <div class="resource_t col-md-12">
               <p><span class="glyphicon glyphicon-stop" aria-hidden="true" id="tag"></span>&nbsp;&nbsp;教案库</p>    
            </div>
            <div class="resource_m col-md-12">
            	<p class="tile">第一次实验</p>
            	<p class="content">类的继承与发展</p> 
            	<!--<p>发布人：邢珍珍</p>-->   	
            </div>
            <div class="resource_b col-md-12"> 
            	<span class="publish col-md-8">发布：邢珍珍&nbsp;&nbsp;&nbsp;&nbsp;2019年6月15日</span><span class="quote col-md-4">已引用：20次</span>
            </div>
        </div>
        <div class="resource col-md-3" id="resource_M">
        	 <div class="resource_t col-md-12">
               <p><span class="glyphicon glyphicon-stop" aria-hidden="true" id="tag2" ></span>&nbsp;&nbsp;教学资源库</p>    
            </div>
            <div class="resource_m col-md-12">
            	<p class="tile">第一次实验</p>
            	<p class="content">类的继承与发展</p>    	
            </div>
            <div class="resource_b col-md-12">
            	<span class="publish col-md-8">发布：邢珍珍&nbsp;&nbsp;&nbsp;&nbsp;2019年6月15日</span><span class="quote col-md-4">已引用：20次</span>
            </div>
        </div>
        <div class="resource col-md-3" id="resource_R">
        	 <div class="resource_t col-md-12">
               <p class="name"><span class="glyphicon glyphicon-stop" aria-hidden="true" id="tag3"></span>&nbsp;&nbsp;多媒体资源库</p>    
            </div>
            <div class="resource_m col-md-12">
            	<p class="tile">第一次实验</p>
            	<p class="content">类的继承与发展类的继承与发展类的继承与发展类的继承与发展类的继承与发展类的继承与发展</p>     	
            </div>
            <div class="resource_b col-md-12">
            		<span class="publish col-md-8">发布：邢珍珍&nbsp;&nbsp;&nbsp;&nbsp;2019年6月15日</span><span class="quote col-md-4">已引用：20次</span>
            </div>
        </div>
        <div class="resource col-md-3" id="resource_L">
            <div class="resource_t col-md-12">
               <p><span class="glyphicon glyphicon-stop" aria-hidden="true" id="tag4"></span>&nbsp;&nbsp;作业库</p>    
            </div>
            <div class="resource_m col-md-12">
            	<p class="tile">第一次实验</p>
            	<p class="content">类的继承与发展</p>
            <!--	<p>发布人：邢珍珍</p> -->     	
            </div>
            <div class="resource_b col-md-12">
            	<span class="publish col-md-8">发布：邢珍珍&nbsp;&nbsp;&nbsp;&nbsp;2019年6月15日</span><span class="quote col-md-4">已引用：20次</span>
            </div>
        </div>
              <div class="resource col-md-3" id="resource_M">
        	 <div class="resource_t col-md-12">
               <p><span class="glyphicon glyphicon-stop" aria-hidden="true" id="tag5"></span>&nbsp;&nbsp;实验库</p>    
            </div>
            <div class="resource_m col-md-12">
            	<p class="tile">第一次实验</p>
            	<p class="content">类的继承与发展</p>
            	<!--<p>发布人：邢珍珍</p>-->      	
            </div>
            <div class="resource_b col-md-12">
      	<span class="publish col-md-8">发布：邢珍珍&nbsp;&nbsp;&nbsp;&nbsp;2019年6月15日</span><span class="quote col-md-4">已引用：20次</span>
            </div>
        </div>
                <div class="resource col-md-3" id="resource_R">
        	 <div class="resource_t col-md-12">
               <p><span class="glyphicon glyphicon-stop" aria-hidden="true" id="tag6"></span>&nbsp;&nbsp;课程设计库</p>    
            </div>
            <div class="resource_m col-md-12">
            	<p class="tile">第一次实验</p>
            	<p class="content">类的继承与发展</p>
            	<!--<p>发布人：邢珍珍</p>-->      	
            </div>
            <div class="resource_b col-md-12">
         	<span class="publish col-md-8">发布：邢珍珍&nbsp;&nbsp;&nbsp;&nbsp;2019年6月15日</span><span class="quote col-md-4">已引用：20次</span>
            </div>
        </div>
</main>
<jsp:include page="/jsp/footer.jsp" flush="true"/>
</body>
</html>