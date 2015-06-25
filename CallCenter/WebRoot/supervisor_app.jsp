<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Welcome</title>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/bootstrap-theme.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/jquery-ui.css"/>
		
		<style>
			body{
				padding-top:52px;
				background-color:#f5f5f5;
			}
			
			.profile-img {
				width: 96px;
				height: 96px;
				margin: 0 auto 10px;
				display: block;
				-moz-border-radius: 50%;
				-webkit-border-radius: 50%;
				border-radius: 50%;
			}
		</style>
	</head>
	<body>
		<nav class="navbar navbar-fixed-top navbar-inverse">
      		<div class="container">
        		<div class="navbar-header">
          			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            			<span class="sr-only">Toggle navigation</span>
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
          			</button>
          			<a class="navbar-brand" href="#">Call Center</a>
        		</div>
        		<div id="navbar" class="collapse navbar-collapse">
          			<ul class="nav navbar-nav navbar-right">
            			<li align="right"><a href="#contact">Login Name : ......</a></li>
            			<li align="right"><a href="#contact">Login out</a></li>
          			</ul>
        		</div><!-- /.nav-collapse -->
      		</div><!-- /.container -->
    	</nav>
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Supervisor Call</h3>
				</div>
				<div class="panel-body">
					<div class="container">
						<div class="row">
							<div class=""></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script src="js/bootstrap.js"></script>
		<script src="js/jquery-1.11.3.min.js"></script>
		<script src="js/jquery-ui.js"></script>
	</body>
</html>