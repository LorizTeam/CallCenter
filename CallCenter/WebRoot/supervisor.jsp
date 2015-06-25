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
		<div class="container">
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
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-4 form-inline">
							<input type="text" class="form-control" placeholder="Name Agent">
							<a href="#" class="btn btn-info"><span class="glyphicon glyphicon-search"></span> Search</a>
						</div>
						<div class="col-md-2 col-md-offset-4">
							<a href="supervisor_app.jsp" class="btn btn-info">Whisper Call</a>
						</div>
					</div>
					<div><br/></div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>Name Agent</th>
										<th>Total Call</th>
										<th>Total Duration</th>
										<th>Work Start</th>
										<th>Work End</th>
										<th>Date Time</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="supervisor_agent.jsp">นายทรงพล  อาริยวัฒน์</a></td>
										<td>6</td>
										<td>67 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นายสมบูรณ์  เอื้ออัชฌาสัย</a></td>
										<td>8</td>
										<td>88 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:30:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นายชูศักดิ์  เกียรติเฉลิมคุณ</a></td>
										<td>5</td>
										<td>55 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:40:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นายดำรงค์  ปคุณวานิช</a></td>
										<td>4</td>
										<td>35 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:50:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นายนุปกรณ์  หาญภูวดล</a></td>
										<td>1</td>
										<td>10 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:55:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นายสมหวัง  จตุรงค์ล้ำเลิศ</a></td>
										<td>3</td>
										<td>15 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 11:10:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางสุมาลี  ดลสุขวงศาวัฒน์</a></td>
										<td>7</td>
										<td>55 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 11:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางสาวอรมนัส  อยู่บุญสอ</a></td>
										<td>2</td>
										<td>10 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 11:30:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางสาวสมใจ  หาญเรืองเกียรติ</a></td>
										<td>10</td>
										<td>100 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 11:40:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นายธันยกร  หลีสันติพงศ์</a></td>
										<td>6</td>
										<td>60 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 11:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางสาวประภาศรี  ทองกิ่งแก้ว</a></td>
										<td>6</td>
										<td>90 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางสาววันเพ็ญ  แซ่เอีย</a></td>
										<td>7</td>
										<td>70 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นายสมพงษ์  สายธารพรม</a></td>
										<td>8</td>
										<td>120 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางสาวสุดจิตร  ลาภเลิศสุข</a></td>
										<td>4</td>
										<td>25 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางวลัยพร  ติ้วเจริญสกุล</a></td>
										<td>5</td>
										<td>60 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางพรศรี  สุตเธียรกุล</a></td>
										<td>7</td>
										<td>30 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:20:00</td>
									</tr>
									<tr>
										<td><a href="supervisor_agent.jsp">นางสาวสุดารัตน์  เกื้อทวีกุล</a></td>
										<td>6</td>
										<td>45 Minute</td>
										<td>9.00 น.</td>
										<td>18.00 น.</td>
										<td>10-06-2015 10:20:00</td>
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