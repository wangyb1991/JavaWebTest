<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery.js"></script>
<script type="text/javascript" src="tagcloud.jquery.js"></script>
<style>
/* Mother effin brute force CSS reset... */
            /* Always include after any other CSS */
        * {
	resize: none;
	border: none;
	outline: none;
	text-decoration: none;
	padding: 0px;
	margin: 0px;
	list-style-type: none;
}
</style>
<script type="text/javascript">
    var settings = {
    //height of sphere container
    height: 400,
    //width of sphere container
    width: 400,
    //radius of sphere
    radius: 150,
    //rotation speed
    speed: 3,
    //sphere rotations slower
    slower: 0.9,
    //delay between update position
    timer: 5,
    //dependence of a font size on axis Z
    fontMultiplier: 15,
    //tag css stylies on mouse over
    hoverStyle: {
        border: 'none',
        color: '#0b2e6f'
    },
    //tag css stylies on mouse out
    mouseOutStyle: {
        border: '',
        color: ''
    }
    };

    $(document).ready(function(){
        $('#tagcloud').tagoSphere(settings);
    });
</script>
</head>
<body>

<!-- Prompt IE 6 users to install Chrome Frame. Remove this if you support IE 6.
     chromium.org/developers/how-tos/chrome-frame-getting-started -->
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
<h1 style=" text-align:center">jquery tagcloud plugin demo</h1>
<div id="tagcloud" style="margin:0px auto">
  <ul>
    <li><a href="#">dazzlingly</a></li>
    <li><a href="#">natatory</a></li>
    <li><a href="#">automa</a></li>
    <li><a href="#">vinologist</a></li>
    <li><a href="#">castrate</a></li>
    <li><a href="#">airfoil</a></li>
    <li><a href="#">unpaintedly</a></li>
    <li><a href="#">caffetannic</a></li>
    <li><a href="#">fissirostrate</a></li>
    <li><a href="#">gingivectomy</a></li>
    <li><a href="#">pinprick</a></li>
    <li><a href="#">forecount</a></li>
    <li><a href="#">anorthophyre</a></li>
    <li><a href="#">tram</a></li>
  </ul>
</div>
<div style="margin:20px auto; text-align:center">
</div>
</body>
</html>