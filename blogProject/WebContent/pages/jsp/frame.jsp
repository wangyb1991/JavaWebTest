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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/plugins/musicplayer/css/style.css">
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/musicplayer/jquery-jplayer/jquery.jplayer.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/musicplayer/ttw-music-player-min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/plugins/musicplayer/js/myplaylist.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            var description = 'a';

            $('#musicplayer').ttwMusicPlayer(myPlaylist, {
                autoPlay:false, 
                description:description,
                jPlayer:{
                    swfPath:'/blogProject/resources/plugins/musicplayer/jquery-jplayer' //You need to override the default swf path any time the directory structure changes
                }
            });
            $(".nav.nav-tabs li,.nav.nav-tabs a").on("click",function(){
    			$(".nav.nav-tabs li").removeClass("active");
    			$(this).addClass("active");
    		});
            $("#wfButton").on("click",function(){
            	$("#childFrame").prop("src","workflow.jsp");
            });
        });
    </script>
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
	    <b><button style="float:right;margin-top:12px;" class="btn btn-sm btn-info" type="button" id="wfButton">workflow</button></b>
	</ul>

    <div class="container">

      <div style="padding:0 20px;width:100%;height:170px;" class="blog-header bg-primary"><br/>
        <h1 class="blog-title" style="display:block;float:left;">CALM DOWN
        <p class="lead blog-description" style="display:block;">share your spirit</p></h1>
        <div id="musicplayer" style="width:370px;float:right;"></div>
      </div><hr/>
      <iframe name="indexFrame" style="border-style:none;width:100%" id="childFrame" scrolling="no" src="index.jsp"></iframe>
    </div><!-- /.container --><hr/>

    <footer class="blog-footer">
      <p class="col-md-12 col-md-offset-1">Blog template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a class="col-md-9 col-md-offset-9" href="#">Back to top</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </body>
</html>