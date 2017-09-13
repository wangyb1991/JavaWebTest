<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Calm D</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script type="text/javascript" charset="utf-8"  src="<%=request.getContextPath()%>/resources/plugins/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8"  src="<%=request.getContextPath()%>/resources/plugins/ueditor/ueditor.parse.js"></script>
	<script type="text/javascript" charset="utf-8"  src="<%=request.getContextPath()%>/resources/plugins/ueditor/ueditor.all.min.js"> </script>
	<script type="text/javascript" charset="utf-8"  src="<%=request.getContextPath()%>/resources/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
	<script> 
		function IFrameResize(){ 
		//alert(this.document.body.scrollHeight); //弹出当前页面的高度 
		var obj = parent.document.getElementById("childFrame"); //取得父页面IFrame对象 
		//alert(obj.height); //弹出父页面中IFrame中设置的高度 
		obj.height = this.document.body.scrollHeight+600; //调整父页面中IFrame的高度为此页面的高度 
		} 
	</script>
</head>
<body onload="IFrameResize()">
	<div class="dropdown">
	  <select class="form-control" style="width:150px;">
		  <option>--blog type--</option>
		  <option>original</option>
		  <option>reprinted</option>
		  <option>translate</option>
		</select>
	  <input type="text" class="form-control" id="inputTitle" placeholder="input blog title..." style="width:400px;">
	</div>
	<h3>blog content <button type="button" class="btn btn-info">how MarkDown work?</button></h3>
	<script id='editor' type='text/plain' style='width:90%;height:500px;'></script>
    <script type="text/javascript">
		$(function(){
			window.UEDITOR_HOME_URL = "<%=request.getContextPath()%>/resources/plugins/ueditor/";
		    UE.delEditor('editor');
		    ueditor = UE.getEditor('editor',{
		        toolbars: [
		                   ['fullscreen', '|', 'source', 'undo', '|', 'redo', 'bold', 'italic', 'underline', 'strikethrough', 
		                    '|', 'superscript', 'subscript', '|', 'forecolor', 'backcolor', '|', 'removeformat', '|', 
		                    'insertorderedlist', 'insertunorderedlist', '|', 'selectall', 'cleardoc', 'paragraph', 
		                    'fontfamily', 'fontsize', '|', 'justifyleft', 'justifyright', 'justifycenter', '|', 'link', 
		                    'unlink', '|', 'emotion', 'simpleupload', 'insertvideo', '|', 'map', '|', 'horizontal', 'print', 
		                    'preview', 'drafts']
		                  ]
		    });
		});
	</script>
	<br/><button type="button" class="btn btn-info">submit</button>
	<br/>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>