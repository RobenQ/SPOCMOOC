function ch(btn){
	var fd = new FormData();
	var td = btn.parentNode.parentNode;
	var order = td.rowIndex;
	var cell = td.getElementsByTagName("input");
	var file = cell[0].files[0];
	if(file==null)
		alert("请选一张图片进行更改！")
	else{
		fd.append("order", order);
		fd.append("file", file);
		var xhr = new XMLHttpRequest();
		xhr.upload.addEventListener("progress", uploadProgress, false);
		xhr.addEventListener("load", uploadComplete, false);
		xhr.addEventListener("error", uploadFailed, false);
		xhr.addEventListener("abort", uploadCanceled, false);
		xhr.open("POST", "/spoc-mooc/admin/changeLunboImage");//修改成自己的接口
		xhr.send(fd);
	}
}
		
function uploadProgress(evt) {
	if (evt.lengthComputable) {
		var percent = Math.round(evt.loaded * 100 / evt.total);
		
		document.getElementById('progress').innerHTML = percent.toFixed(2) + '%';
		document.getElementById('progress').style.width = percent.toFixed(2) + '%';
	}
	else {
		document.getElementById('progress').innerHTML = 'unable to compute';
	}
}
function uploadComplete(evt) {
	/* 服务器端返回响应时候触发event事件*/
	// document.getElementById('result').innerHTML = evt.target.responseText;
	alert("图片修改成功！");
	
}
function uploadFailed(evt) {
	alert("出现错误，图片修改失败！");
}
function uploadCanceled(evt) {
	alert("The upload has been canceled by the user or the browser dropped the connection.");
}