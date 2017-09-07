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
  </head>

  <body>

    <ul class="nav nav-tabs" style="padding:0 30px;">
    	<a class="navbar-brand text-success" href="index.jsp" target="indexFrame">Calm</a>
	    <li role="presentation"><a href="loginAndRegister.jsp" target="indexFrame">login/register</a></li>
	    <li role="presentation"><a href="newBlog.jsp" target="indexFrame">new blog</a></li>
	    <li role="presentation" class="dropdown">
		    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
		      my blog <span class="caret"></span>
		    </a>
		    <ul class="dropdown-menu">
		      <li role="presentation"><a href="#">join</a></li>
		      <li role="presentation"><a href="myBlog.jsp" target="indexFrame">check</a></li>
		      <li role="presentation"><a href="#">find</a></li>
		    </ul>
	    </li>
	    <b><button style="float:right;margin-top:12px;" class="btn btn-sm btn-info" type="button">workflow</button></b>
	</ul>

    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">CALM DOWN</h1>
        <p class="lead blog-description">share your blog</p>
      </div>
      <hr/>
      <iframe name="indexFrame" style="border-style:none;width:100%" id="childFrame" scrolling="no" src="index.jsp"></iframe>
    </div><!-- /.container -->

    <footer class="blog-footer">
      <p class="col-md-12 col-md-offset-1">Blog template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a class="col-md-9 col-md-offset-9" href="#">Back to top</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript">
    	$(".nav.nav-tabs li,.nav.nav-tabs a").on("click",function(){
    		$(".nav.nav-tabs li").removeClass("active");
    		$(this).addClass("active");
    	});
    </script>
  </body>
</html>