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

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <!-- jqGrid组件基础样式包-必要 -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugins/jqgrid/jqgrid/css/ui.jqgrid.css" />
	
	<!-- jqGrid主题包-非必要 --> 
	<!-- 在jqgrid/css/css这个目录下还有其他的主题包，可以尝试更换看效果 -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/plugins/jqgrid/jqgrid/css/css/ui-lightness/jquery-ui-1.8.16.custom.css" />

	<!-- jquery插件包-必要 -->
	<!-- 这个是所有jquery插件的基础，首先第一个引入 -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqgrid/js/jquery-1.7.1.js"></script>
	
	<!-- jqGrid插件包-必要 -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqgrid/jqgrid/js/jquery.jqGrid.src.js"></script>
	
	<!-- jqGrid插件的多语言包-非必要 -->
	<!-- 在jqgrid/js/i18n下还有其他的多语言包，可以尝试更换看效果 -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/jqgrid/jqgrid/js/i18n/grid.locale-cn.js"></script>
  	<script type="text/javascript" charset="utf-8"  src="<%=request.getContextPath()%>/pages/jsp/workflow.js"></script>
	<script> 
		function IFrameResize(){ 
		//alert(this.document.body.scrollHeight); //弹出当前页面的高度 
		var obj = parent.document.getElementById("childFrame"); //取得父页面IFrame对象 
		//alert(obj.height); //弹出父页面中IFrame中设置的高度 
		obj.height = this.document.body.scrollHeight; //调整父页面中IFrame的高度为此页面的高度 
		} 
	</script>
</head>
<body onload="IFrameResize()">
	<table id="wf-table" style="width:100%;"></table>
	<div id="pager2"></div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>