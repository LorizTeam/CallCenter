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
          			<a class="navbar-brand" href="mainAgent.jsp"><img src="img/logo.png" height="27" width="50"/></a>
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
			<div class="row">
				<div class="col-md-9">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Whisper</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-2">
									<div class="center-block">
										<img class="profile-img" src="img/call.png"/>
										<center><label>Whisper Call</label></center>
									</div>
								</div>
								<div class="col-md-2 col-md-offset-1">
									<div class="center-block">
										<img class="profile-img" src="img/endcall.png"/>
										<center><label>Whisper END</label></center>
									</div>
								</div>
								<!--  -->
								<div class="col-md-7">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h3 class="panel-title">Agent Call</h3>
										</div>
									<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Name Agent</th>
												<th>Calling</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
								<!--  -->
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Agent Online</h3>
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Name Agent</th>
										<th>on</th>
										<th>off</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>นายทรงพล  อาริยวัฒน์</td>
										<td>O</td>
										<td>O</td>
									</tr>
									<tr>
										<td>นายทรงพล  อาริยวัฒน์</td>
										<td>O</td>
										<td>O</td>
									</tr>
									<tr>
										<td>นายทรงพล  อาริยวัฒน์</td>
										<td>O</td>
										<td>O</td>
									</tr>
									<tr>
										<td>นายทรงพล  อาริยวัฒน์</td>
										<td>O</td>
										<td>O</td>
									</tr>
									<tr>
										<td>นายทรงพล  อาริยวัฒน์</td>
										<td>O</td>
										<td>O</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-9">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Listening</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-2">
									<div class="center-block">
										<img class="profile-img" src="img/call.png"/>
										<center><label>Listening Call</label></center>
									</div>
								</div>
								<div class="col-md-2 col-md-offset-1">
									<div class="center-block">
										<img class="profile-img" src="img/endcall.png"/>
										<center><label>Listening END</label></center>
									</div>
								</div>
								<!--  -->
								<div class="col-md-7">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h3 class="panel-title">Agent Call</h3>
										</div>
									<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Name Agent</th>
												<th>Calling</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
											<tr>
												<td>นายทรงพล  อาริยวัฒน์</td>
												<td>O</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
								<!--  -->
							</div>
							<div>
								
							</div>
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