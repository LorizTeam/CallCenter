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
				padding-top:50px;
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
            				<li align="right"><a href="#contact">Login Name : ......</a></li>
            				<li align="right"><a href="#contact">Login out</a></li>
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
						<div id="canvas-holder">
							<center><canvas id="chart-area" width="300" height="300"/></center>
						</div>
					</div>
					<div><br/></div>
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
										<th>Date Time</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>วิไล เคียงประดู่</td>
										<td>17 Minute</td>
										<td>2</td>
										<td>3</td>
										<td>10-06-2015 10:30:00</td>
									</tr>
									<tr>
										<td>ภาณุวัฒน์ ไทยวัฒนานนท์</td>
										<td>15 Minute</td>
										<td>2</td>
										<td>3</td>
										<td>10-06-2015 10:40:00</td>
									</tr>
									<tr>
										<td>พงศ์นรินทร์ อุลิศ</td>
										<td>16 Minute</td>
										<td>2</td>
										<td>3</td>
										<td>10-06-2015 10:50:00</td>
									</tr>
									<tr>
										<td>สุรชัย แก้วพิชัย</td>
										<td>18 Minute</td>
										<td>2</td>
										<td>3</td>
										<td>10-06-2015 13:30:00</td>
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
		<script src="js/Chart.js"></script>
		<script>
		var pieData = [
				{
					value: 40,
					color:"#F7464A",
					highlight: "#FF5A5E",
					label: "โทรสำเร็จ"
				},
				{
					value: 10,
					color: "#46BFBD",
					highlight: "#5AD3D1",
					label: "โทรไม่สำเร็จ"
				},
				{
					value: 20,
					color: "#FDB45C",
					highlight: "#FFC870",
					label: "ลูกค้ายอมจ่ายเงิน"
				},
				{
					value: 10,
					color: "#949FB1",
					highlight: "#A8B3C5",
					label: "ลูกค้ายังไม่สามารถผ่อนได้"
				},
				{
					value: 10,
					color: "#00CC00",
					highlight: "#A8B3C5",
					label: "Level 1"
				},
				{
					value: 5,
					color: "#FFFF00",
					highlight: "#A8B3C5",
					label: "Level 2"
				},
				{
					value: 2,
					color: "#F00000",
					highlight: "#A8B3C5",
					label: "Level 3"
				}

			];

			window.onload = function(){
				var ctx = document.getElementById("chart-area").getContext("2d");
				window.myPie = new Chart(ctx).Pie(pieData);
			};
		</script>
	</body>
</html>