<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="bootstrap.css"/>
		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<asset:javascript src="bootstrap.js"/>
		<asset:javascript src="myscripts.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div class="container" id="" role="banner" style="margin-left:0px;padding:10px;">
		
		<a href="http://localhost:8080/hulaki/"><asset:image width="100" height="100" class="img-circle" src="hulaki.jpg" alt="Hulaki"/></a>
		<h1>Hulaki</h1>
		<h3>Kathmandu, Nepal</h3>
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo">
		<p>Developed by <a href="">Aman Maharjan</a>, 2014</p>
		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
