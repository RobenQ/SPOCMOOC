<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en" style="background-color: white;">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link href="${pageContext.request.contextPath}/css/Admin/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/css/achievement/uploadAchievement.css"
	rel="stylesheet" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/ueditor.all.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/zh-cn.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/My97DatePicker/calendar.js"
	charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript">
	function submitButton() {
		var member = "";
		var memberNum = "";
		$("input[name='member']").each(function(i) {
			member = member + $(this).val() + ",";
		});
		$("input[name='memberNum']").each(function(i) {
			memberNum = memberNum + $(this).val() + ",";
		});
		$("#memberContent").val(member);
		$("#memberNumContent").val(memberNum);
		var level = "";
		$("input[name='level']").each(function(i) {
			level = level + $(this).val() + ",";
		});
		$("#levelContent").val(level);
		var judge = true;//定义判断，如果有空，则不可提交,默认可以提交
		var alertJudge = true;//弹框判断
		 $("#content").find("input[type='text']").each(function(){
                 if($(this).val()==""&&alertJudge==true){
			         alert($(this).attr("placeholder")+"    不可为空")
			         judge = false;  alertJudge = false;
					 }
					 });
		 var detail = $("#detail").text();
		 if(detail==""&&alertJudge==true)
			 {
			 alert("作品详情    不可为空")
	         judge = false;  alertJudge = false;
			 }
		 var plan = $("#plan").text();
		 if(plan==""&&alertJudge==true)
		 {
		 alert("作品计划   不可为空")
         judge = false;  alertJudge = false;
		 }
		 $("#content").find("input[type='file']").each(function(){
			 if($(this).val()==""&&alertJudge==true){
			 alert($(this).attr("placeholder")+"    不可为空")
			 judge = false;  alertJudge = false;
			 }
			 });
		 $("#content").find("input[type='date']").each(function(){
					 if($(this).val()==""&&alertJudge==true){
					 alert($(this).attr("placeholder")+"    不可为空")
					 judge = false;  alertJudge = false;
					 }
					 });
		 if(judge)
			 {
			 $("#formContent").submit();
			 }
	}
</script>
<script type="text/javascript">
var numId = 3;//定义全局变量，用于动态ID的变化
var nameId = 4;//定义全局变量，用于动态ID的变化
	$(function() {
		$("#addMemberButton").click(function() {
			var mode = "<li style='padding: 0%; margin-bottom: 1%; float: left; width: 100%;'><div style='padding: 0px; margin: 0px;width:85%'><input type='text' class='form-control' id='"+numId+"' name='memberNum' placeholder='学号' oninput='readMemberId(this)' style='width: 58%; float: left;'><input type='text' class='form-control' id='"+nameId+"' name='member' placeholder='作品成员' readonly='readonly' style='width: 38%; float: left; margin-left:3%'></div></li>"		
			numId = numId+2;
			nameId = nameId+2;
			$("#ulContent").append(mode);
			$("#ulContent").trigger("create");
		});
		$("#addLevelButton").click(function() {
			var mode = "<li style='padding: 0%; margin-bottom: 1%;width: 84%;'><input type='text' class='form-control' id='level' name='level' placeholder='获奖内容'style='width: 100%;'></li>"		
			$("#ulLevelContent").append(mode);
		});
	})
</script>
<script type="text/javascript">
function readMemberId(one) {
	var judge = true;
		var idNum = $(one).attr('id');
		var id = $("#"+idNum).val();//正在输入的学生学号
		var idName = parseInt(idNum)+1;
	var memberId = "";//已输入的学生学号
	$("input[name='memberNum']").each(function(i) {
		memberId = $(this).val();
		var eachId = $(this).attr('id');
		if(id==memberId&&eachId!=idNum)
			{
			alert("输入学号不可重复输入");
			judge = false;
			}
	});
	if(judge)
		{
		$
		.ajax({
			async : false,
			cache : false,
			url : "${pageContext.request.contextPath}/teacher/getStudentNameById/"+id,
			type : "POST",
			dataType : "text",
			success : function(result) {
		$("#"+idName).val(result)
			},
			error:function(){
			}
		});
		}
}
</script>
<script type="text/javascript">
	$(function(){
		setIframeHeight();
	});
	function setIframeHeight() {
	    var height = $(".IURP").outerHeight(true)
		if (height) {
			$("#content").height(height);//直接设置元素的高
			}
		}
			window.onload = function() {
			//重复执行某个方法,动态刷新高度 
			var t1 = window.setInterval(setIframeHeight, 500);
			var t2 = window.setInterval("setIframeHeight()", 500);
			window.clearInterval(t1);
		};
</script>
<script type="text/javascript">
	function readCompereId() {
		var memberNum = $("#memberNum").val();
		$
				.ajax({
					async : false,
					cache : false,
					url : "${pageContext.request.contextPath}/teacher/getStudentNameById/"+memberNum,
					type : "POST",
					dataType : "text",
					success : function(result) {
				$("#compere").val(result)
					},
					error:function(){
					}
				});
	}
</script>
<script type="text/javascript">
	function readGuidance() {
		var guidanceTeacherId = $("#guidanceTeacherId").val();
		$
				.ajax({
					async : false,
					cache : false,
					url : "${pageContext.request.contextPath}/teacher/getTeacherNameById/"+guidanceTeacherId,
					type : "POST",
					dataType : "text",
					success : function(result) {
				$("#guidanceTeacher").val(result)
					},
					error:function(){
					}
				});
	}
</script>
<script type="text/javascript" charset="utf-8">
$(function (){
	var width = $("#name").width();
	var height = $("#name").height();
	$("#finishTime").height(height);
	var ue = UE.getEditor('detail',{
	initialFrameWidth:width,
	initialFrameHeight:180,
	initialFrameMargin:0,
	});
	var ue = UE.getEditor('plan',{
		initialFrameWidth:width,
		initialFrameHeight:180,
		initialFrameMargin:0,
		})
})
</script>
<script type="text/javascript">
function blurStudent(one){
	var idNum = $(one).attr('id');
		var id = $("#"+idNum).val();//正在输入的学生学号
		if(id!==""||id!=null||id!="null")
			{
			$
			.ajax({
				async : false,
				cache : false,
				url : "${pageContext.request.contextPath}/teacher/getStudentNameById/"+id,
				type : "POST",
				dataType : "text",
				success : function(result) {
					var i = "0";
					if(i=="0")
						{
						if(result==null||result==""||result=="null")
						{
						alert("输入错误，无法对应学生姓名");
						i = "1";
						}
						}
				},
				error:function(){
				}
			});
			}
}
</script>
<script type="text/javascript">
function blurTeacher(one){
	var guidanceTeacherId = $("#guidanceTeacherId").val();
		if(guidanceTeacherId!==""||guidanceTeacherId!=null||guidanceTeacherId!="null")
			{
			$
			.ajax({
				async : false,
				cache : false,
				url : "${pageContext.request.contextPath}/teacher/getTeacherNameById/"+guidanceTeacherId,
				type : "POST",
				dataType : "text",
				success : function(result) {
					if(result==null||result==""||result=="null")
					{
						$("#guidanceTeacher").val("");
						alert("输入错误，无法对应教师姓名");
					}
				},
				error:function(){
				}
			});
			}
}
</script>
</head>
<body class="body">
	<div class="top">
		<jsp:include page="/jsp/top.jsp" flush="true" />
	</div>
	<div class="content" id="content">
		<h3 class="text-center" style="margin: 0px; margin-bottom: 1%">大学生创新创业作品上传</h3>
		<form id="formContent"
			action="${pageContext.request.contextPath}/achievement/publishSIAE"
			method="post" enctype="multipart/form-data">
			<div class="col-md-12 IURP panel panel-default"
				style="margin-top: 2%; padding: 3%; display: block">
				<div class="form-group">
					<label for="name">大学生创新创业作品名称</label> <input type="text"
						class="form-control" id="name" name="name" placeholder="作品名称">
				</div>
				<div class="form-group">
					<label for="teamName">团队名</label> <input type="text"
						class="form-control" id="teamName" name="teamName"
						placeholder="团队名">
				</div>
				<div class="form-group">
					<label for="compere">作品负责人</label>
					<div style="padding: 0px; margin: 0px; width: 100%;">
						<input type="text" class="form-control" id="memberNum"
							onkeyup="this.value=this.value.replace(/[^\d]/g,'') "
							onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "
							name="memberNum" placeholder="学号" oninput="readCompereId()"
							onblur=" blurStudent(this)" style="width: 50%; float: left;">
						<input type="text" class="form-control" id="compere"
							name="compere" style="float: left; width: 48%; margin-left: 2%"
							placeholder="作品负责人" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label for="guidanceTeacher">指导教师</label>
					<div style="padding: 0px; margin: 0px; width: 100%;">
						<input type="text" class="form-control" id="guidanceTeacherId"
							name="guidanceTeacherId" placeholder="工号"
							onblur="blurTeacher(this) "
							onkeyup="this.value=this.value.replace(/[^\d]/g,'') "
							onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "
							oninput="readGuidance(event)" style="width: 50%; float: left">
						<input type="text" class="form-control" id="guidanceTeacher"
							name="guidanceTeacher"
							style="float: left; width: 48%; margin-left: 2%"
							placeholder="指导教师" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label for="member">作品成员</label> <br>
					<ul class="col-md-12" style="padding: 0; list-style: none"
						id="ulContent">
						<li
							style="padding: 0%; margin-bottom: 1%; float: left; width: 85%;">
							<div style="padding: 0px; margin: 0px; width: 100%;">
								<input type="text" class="form-control" id="1" name="memberNum"
									oninput="readMemberId(this)" placeholder="学号"
									onblur=" blurStudent(this)"
									onkeyup="this.value=this.value.replace(/[^\d]/g,'') "
									onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "
									style="width: 58%; float: left;"><input type="text"
									class="form-control" id="2" name="member" placeholder="作品成员"
									style="width: 38%; margin-left: 3%; float: left"
									readonly="readonly">
							</div>
						</li>
						<li class="text-center"
							style="padding: 0%; margin-bottom: 1%; float: left" id="liButton">
							<button type="button" class="btn btn-primary btn-primary"
								id="addMemberButton">添加新成员</button>
						</li>
					</ul>
					<input type="text" style="display: none" id="memberContent"
						name="memberContent"><input type="text"
						style="display: none" id="memberNumContent"
						name="memberNumContent"> <br>
				</div>
				<div class="form-group">
					<label for="level">获奖情况</label> <br>
					<ul class="col-md-12" style="padding: 0; list-style: none"
						id="ulLevelContent">
						<li id="liContent"
							style="padding: 0%; margin-bottom: 1%; float: left; width: 84%;"><input
							type="text" class="form-control" id="level" name="level"
							placeholder="获奖内容" style="width: 100%;"></li>
						<li class="text-center"
							style="padding: 0%; margin-bottom: 1%; float: left; margin-left: 1%"
							id="liButton">
							<button type="button" class="btn btn-primary btn-primary"
								id="addLevelButton">添加奖项</button>
						</li>
					</ul>
					<input type="text" style="display: none" id="levelContent"
						name="levelContent"> <br>
				</div>
				<div class="form-group">
					<label for="introduction">作品简介</label> <input type="text"
						class="form-control" id="introduction" name="introduction"
						placeholder="作品简介(字数限制50)" maxlength="50">
				</div>
				<div class="form-group">
					<label for="feature">作品特点</label> <input type="text"
						class="form-control" id="feature" name="feature"
						placeholder="作品特点">
				</div>
				<div class="form-group">
					<label for="detail">作品详情</label>
					<div style="padding-left: 0px; margin-left: 2%">
						<textarea id="detail" name="detail" placeholder="作品详情"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="picture" style="float: left; margin-right: 4%;">作品图片</label>
					<input type="file" id="picture" name="img" multiple="multiple"
						placeholder="作品图片" />
				</div>
				<div class="form-group" style="margin-top: 3%">
					<label for="exampleInputFile"
						style="float: left; margin-right: 4%;">作品附件</label> <input
						type="file" name="accessory" id="exampleInputFile"
						placeholder="作品附件">
				</div>
				<div class="form-group">
					<label for="plan">作品计划</label>
					<div style="padding-left: 0px; margin-left: 2%">
						<textarea id="plan" name="plan" placeholder="作品计划"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="declaration" style="float: left; margin-right: 6%;">申报书</label>
					<input type="file" id="declaration" name="declaration"
						placeholder="申报书">
				</div>
				<div class="form-group" style="margin-top: 3%">
					<label for="midreply" style="float: left; margin-right: 4%;">中期检查</label>
					<input type="file" id="midreply" name="midreply" placeholder="中期检查">
				</div>
				<div class="form-group" style="margin-top: 3%">
					<label for="concludingRreport"
						style="float: left; margin-right: 4%;">结题报告</label> <input
						type="file" id="concludingRreport" name="concludingRreport"
						placeholder="结题报告">
				</div>
				<div class="form-group" style="margin-top: 3%">
					<label for="finishTime">作品完成时间</label> <input type="text"
						style="height: 30px;" class="Wdate form-control" name="finishTime"
						id="finishTime"
						onclick="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'%y-%M-%d %H:%m:%s'})"
						placeholder="作品完成时间" />
				</div>
				<div class="form-group">
					<label for="status">作品状态</label> <select class="form-control"
						id="status" name="status">
						<option value="进行中">进行中</option>
						<option value="已完成">已完成</option>
					</select>
				</div>
				<div class="form-group" style="margin-top: 8%">
					<input class="btn btn-primary" type="button" value="上传"
						onclick="submitButton()" style="margin-left: 20%"> <a
						href=”#” onClick=”javascript:history.back(-1)”><button
							class="btn btn-primary pull-right" style="margin-right: 20%">取消</button>
					</a>
				</div>
			</div>
		</form>
	</div>
	<div class="footer"></div>
</body>
</html>