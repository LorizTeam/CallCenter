<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>
<%@ page import="com.callcenter.agent.form.MainAgentForm" %>
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
		</div>
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading"><h3 class="panel-title">Create Customer</h3></div>
				<div class="panel-body">
					<div class="container">
						<div><br/></div>
						<form action="">
						<div class="row">
							<div class="col-md-2" align="right">
								<label>เบอร์โทรศัพท์</label>
							</div>
							<div class="col-md-3">
								<input type="text" id="custID" name="custID" class="form-control" placeholder="Telephone">
							</div>
							<div class="col-md-2" align="right">
								<label>ชื่อ - นามสกุล</label>
							</div>
							<div class="col-md-3">
								<input type="text" id="custName" name="custName" class="form-control" placeholder="Full Name">
							</div>
						</div>
						<div><br/></div>
						<div class="row">
							<div class="col-md-2" align="right">
								<label>งบรอบเดือน</label>
							</div>
							<div class="col-md-3">
								<input type="text" id="period" name="period" class="form-control" placeholder="Preiod">
							</div>
							<div class="col-md-2" align="right">
								<label>วันที่เริ่มจ่ายงวดแรก</label>
							</div>
							<div class="col-md-3">
								<input type="text" id="custDate" name="custDate" class="form-control" placeholder="Date">
							</div>
						</div>
						<div><br/></div>
						<div class="row">
							<div class="col-md-2" align="right">
								<label>Email</label>
							</div>
							<div class="col-md-8">
								<input type="text" id="custEmail" name="custEmail" class="form-control" placeholder="exsample@email.com">
							</div>
						</div>
						<div><br/></div>
						<div class="row">
							<div class="col-md-2" align="right">
								<label>ที่อยู่</label>
							</div>
							<div class="col-md-8">
								<textarea class="form-control" id="custAddr" name="custAddr" rows="5"></textarea>
							</div>
						</div>
						<div><br/></div>
						<div class="row">
							<div class="col-md-10" align="right">
								<input type="submit" class="btn btn-info" value="Save"/>
							</div>
						</div>
					</form>
					</div>
					
				</div>
			</div>
		</div>
		
		<script src="js/bootstrap.js"></script>
		<script src="js/jquery-1.11.3.min.js"></script>
	</body>
</html>