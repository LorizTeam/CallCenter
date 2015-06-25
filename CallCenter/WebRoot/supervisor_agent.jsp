<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>
<%
	String name = "";

	if(session.getAttribute("name") != null) {
		name = (String) session.getAttribute("name");
	}
 %>
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
		<div class="container-fuild">
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
            				<li align="right"><a href="#contact">Login Name : <%=name%> </a></li>
            				<li align="right"><a href="/CallCenter/login.jsp">Log Out</a></li>
          				</ul>
        			</div><!-- /.nav-collapse -->
      			</div><!-- /.container -->
    		</nav>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Supervisor</h3>
				</div>
				<div class="panel-body">
					<div class="container">
					<div><br/></div>
					<div class="row">
						<div class="col-md-2 col-md-offset-11">
							<a href="" class="btn btn-info">Chart</a>
						</div>
					</div>
					<div><br/></div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Agent</h3>
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Name Agent</th>
										<th>Sum Call</th>
										<th>Sum Duration</th>
										<th>Work Start</th>
										<th>Work End</th>
										<th>Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>นายทรงพล  อาริยวัฒน์</td>
										<td>6</td>
										<td>67 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Detail Agent Call</h3>
						</div>
						<div class="panel-body">
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>Name Customer</th>
										<th>Call Time</th>
										<th>Level</th>
										<th>Count Call</th>
										<th>Date</th>
										<th>Sound</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>วิไล เคียงประดู่</td>
										<td>17 Minute</td>
										<td>2</td>
										<td>3</td>
										<td>10-06-2015</td>
										<td>Void.mp3</td>
									</tr>
									<tr>
										<td>ภาณุวัฒน์ ไทยวัฒนานนท์</td>
										<td>15 Minute</td>
										<td>2</td>
										<td>3</td>
										<td>10-06-2015</td>
										<td>Void.mp3</td>
									</tr>
									<tr>
										<td>พงศ์นรินทร์ อุลิศ</td>
										<td>16 Minute</td>
										<td>2</td>
										<td>3</td>
										<td>10-06-2015</td>
										<td>Void.mp3</td>
									</tr>
									<tr>
										<td>สุรชัย แก้วพิชัย</td>
										<td>18 Minute</td>
										<td>2</td>
										<td>3</td>
										<td>10-06-2015</td>
										<td>Void.mp3</td>
									</tr>
								</tbody>
							</table>
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