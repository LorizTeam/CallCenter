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
          				<a class="navbar-brand" href="mainAgent.jsp"><img src="img/logo.png" height="27" width="50"/></a>
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
					<h3 class="panel-title">History Customer</h3>
				</div>
				<div class="panel-body">
					<div class="container">
					<div><br/></div>
					<div class="row">
						<div class="col-md-2 col-md-offset-11">
							<a href="http://localhost:8080/CallCenter/mainAgent.do" class="btn btn-info">Back</a>
						</div>
					</div>
					<div><br/></div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Customer</h3>
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Customer Name</th>
										<th>Telephone No</th>
										<th>Begin Date</th>
										<th>Period</th>
										<th>Total Amount</th>
										<th>E-mail</th>
										<th>Agent Name</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>เศรษฐพงศ์  ธุรพันธ์กิจโชติ</td>
										<td>0852232852</td>
										<td>25-06-2015</td>
										<td>60</td>
										<td>600,000</td>
										<td>S1Raccoon@gmail.com</td>
										<td><%=name%></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Detail Customer Call</h3>
						</div>
						<div class="panel-body">
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>Call Date-Time</th>
										<th>Duration</th>
										<th>Status</th>
										<th>Sound</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>25-06-2015 15:11:56</td>
										<td>5 Minute</td>
										<td>ANSWERED</td>
										<td>0852232852 25-06-2015 15:11:56.mp3</td>
									</tr>
									<tr>
										<td>24-06-2015 10:54:25</td>
										<td>7 Minute</td>
										<td>ANSWERED</td>
										<td>0852232852 24-06-2015 10:54:25.mp3</td>
									</tr>
									<tr>
										<td>23-06-2015 15:11:56</td>
										<td>8 Minute</td>
										<td>ANSWERED</td>
										<td>0852232852 23-06-2015 15:11:56.mp3</td>
									</tr>
									<tr>
										<td>23-06-2015 14:59:55</td>
										<td>0 Minute</td>
										<td>NO ANSWERED</td>
										<td>0852232852 23-06-2015 14:59:55.mp3</td>
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