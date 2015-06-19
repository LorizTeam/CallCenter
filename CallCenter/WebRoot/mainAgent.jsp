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
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Agent</h3>
				</div>
				<div class="panel-body">
					<div class="container">
					<div class="row">
						<div class="col-md-2">

						</div>
						<div class="col-md-2">
							<input type="text" id="datepicker1" class="form-control" placeholder="Form Date">
						</div>
						<div class="col-md-2">
							<input type="text" id="datepicker2" class="form-control" placeholder="To Date">
						</div>
						<div class="col-md-4 form-inline">
							<input type="text" class="form-control" placeholder="Search">
							<a href="#" class="btn btn-info"><span class="glyphicon glyphicon-search"></span> Search</a>
						</div>
					</div>
					<div><br/></div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>Number</th>
										<th>Phone Number</th>
										<th>Name</th>
										<th>Level</th>
										<th>Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td align="center">1</td>
										<td>0993511516</td>
										<td>วิไล เคียงประดู่</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">2</td>
										<td>0993916250 </td>
										<td>ภาณุวัฒน์ ไทยวัฒนานนท์</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">3</td>
										<td>0990504971</td>
										<td>พงศ์นรินทร์ อุลิศ</td>
										<td>2</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">4</td>
										<td>0993504194</td>
										<td>สมิทธิ์ บุญชุติมา</td>
										<td>3</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">5</td>
										<td>0993562253</td>
										<td>สุรชัย แก้วพิชัย</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">4</td>
										<td>0993504194</td>
										<td>สมิทธิ์ บุญชุติมา</td>
										<td>3</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">5</td>
										<td>0993562253</td>
										<td>สุรชัย แก้วพิชัย</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">4</td>
										<td>0993504194</td>
										<td>สมิทธิ์ บุญชุติมา</td>
										<td>3</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">5</td>
										<td>0993562253</td>
										<td>สุรชัย แก้วพิชัย</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">4</td>
										<td>0993504194</td>
										<td>สมิทธิ์ บุญชุติมา</td>
										<td>3</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">5</td>
										<td>0993562253</td>
										<td>สุรชัย แก้วพิชัย</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">4</td>
										<td>0993504194</td>
										<td>สมิทธิ์ บุญชุติมา</td>
										<td>3</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">5</td>
										<td>0993562253</td>
										<td>สุรชัย แก้วพิชัย</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">4</td>
										<td>0993504194</td>
										<td>สมิทธิ์ บุญชุติมา</td>
										<td>3</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">5</td>
										<td>0993562253</td>
										<td>สุรชัย แก้วพิชัย</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">4</td>
										<td>0993504194</td>
										<td>สมิทธิ์ บุญชุติมา</td>
										<td>3</td>
										<td>10-06-2015</td>
									</tr>
									<tr>
										<td align="center">5</td>
										<td>0993562253</td>
										<td>สุรชัย แก้วพิชัย</td>
										<td>1</td>
										<td>10-06-2015</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2 col-md-offset-10">
							<a href="agentCall.jsp" class="btn btn-info">Next ></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script src="js/bootstrap.js"></script>
		<script src="js/jquery-1.11.3.min.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script>
		  $(function() {
		    $( "#datepicker1" ).datepicker();
		  });
		  
		  $(function() {
		    $( "#datepicker2" ).datepicker();
		  });
	    </script>
	</body>
</html>