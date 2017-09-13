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

    <!-- Custom styles for this template -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="http://malsup.github.com/jquery.form.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/ace/js/bootbox.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/pages/jsp/loginAndRegister.js"></script>
    <script> 
		function IFrameResize(){ 
		//alert(this.document.body.scrollHeight); //弹出当前页面的高度 
		var obj = parent.document.getElementById("childFrame"); //取得父页面IFrame对象 
		//alert(obj.height); //弹出父页面中IFrame中设置的高度 
		obj.height = this.document.body.scrollHeight+50; //调整父页面中IFrame的高度为此页面的高度 
		} 
	</script>
  </head>
	<body onload="IFrameResize()">
		<!-- <iframe style="float:right;" src="abc.jsp"></iframe> -->
		<div style="width:500px;float:left;">
		<form class="form-horizontal" id="loginForm" method="GET" action="myBlog.jsp"><br/><br/>
		<div class="form-group">
			<div class="col-sm-6">
		      <input type="text" name="userName" class="form-control" id="inputEmail" placeholder="Email">
		    </div>
	    </div>
	  <div class="form-group">
	    <div class="col-sm-6">
	      <input type="password" name="userPW" class="form-control" id="inputPassword" placeholder="Password">
	    </div>
	   </div>
		  <div class="form-group">
		    <div class="col-sm-6">
		      <div class="checkbox">
		        <label>
		          <input type="checkbox"> Remember me
		        </label>
		      </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-6">
		      <button type="submit" id="loginSubmit" class="btn btn-info">Sign in</button>
		    </div>
		  </div>
		</form>
		</div>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</body>
</html>