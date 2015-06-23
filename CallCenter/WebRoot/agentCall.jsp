<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>
<%@ page import="com.callcenter.agent.form.MainAgentForm" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Welcome</title>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/bootstrap-theme.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		
		<style>
			body{
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
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-info">
							<div class="panel-heading"><h3 class="panel-title">Create Pattern Message</h3></div>
							<div class="panel-body">
								<div class="col-md-4">
									<input type="text" class="form-control" placeholder="Title">
								</div>
								<div class="col-md-6">
									<input type="text" class="form-control" placeholder="Message">
								</div>
								<div class="col-md-1">
									<select class="form-control">
										<option>Select Level</option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
								</div>
								<div class="col-md-1">
									<a href="#" class="btn btn-info">Save</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading"><h3 class="panel-title">Member Detail</h3></div>
							<div class="panel-body">
								<table class="table table-bordered table-hover table-striped">
									<thead>
										<tr>
											<th>Phone Number</th>
											<th>Name</th>
											<th>Level</th>
											<th>Money</th>
											<th>Date</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>0993511516</td>
											<td>วิไล เคียงประดู่</td>
											<td>1</td>
											<td>10,000 บาท</td>
											<td>10-06-2015</td>
										</tr>
									</tbody>
								</table>
								<div class="row">
									<div class="col-md-2">
										<div class="center-block">
											<a href="#"><img class="profile-img" src="img/call.png"/></a>
										</div>
									</div>
									<div class="col-md-2 col-md-offset-1">
										<div class="center-block">
											<a href="#"><img class="profile-img" src="img/endcall.png"/></a>
										</div>
									</div>
								</div>
								<div><br/></div>
								<div class="row">
									<div class="col-md-3">
										<label>Call Level</label>
										<select class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select>
									</div>
									<div class="col-md-3">
										<label>Call Type</label>
										<select class="form-control">
											<option>เลือก</option>
											<option>ติดต่อได้</option>
											<option>ติดต่อได้</option>
										</select>
									</div>
									<div class="col-md-6">
										<label>Select Pattern Message</label>
										<select class="form-control">
											<option>เลือก</option>
											<option>บริษัท TOYOTA</option>
											<option>บริษัท HOME PRO</option>
											<option>บริษัท อไหล่ยานยนต์</option>
											<option>บริษัท INDEX</option>
										</select>
									</div>
								</div>
								<div><br/></div>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-danger">
											<div class="panel-heading"><h3 class="panel-title">Pattern Message Call</h3></div>
											<div class="panel-body">
												สวัสดีค่ะบริษัท.... บริการโทรเตือนการชำระเงินค่าผ่อนรถยนต์<br/>
												ซึ้งต้องจ่ายภายในวันที่....<br/>
												เป็นจำนวนเงินทั้งหมด....<br/>
												ขอบคุณค่ะ ...<br/>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-2">
										<label><input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Send SMS</label>
									</div>
									<div class="col-md-2">
										<label><input type="radio" name="optionsRadios" id="optionsRadios2" value="option1" checked>Not Send SMS</label>
									</div>
									<div class="col-md-6 form-inline">
										<label>5</label>
										<select class="form-control">
											<option>เลือก</option>
											<option>บริษัท TOYOTA</option>
											<option>บริษัท HOME PRO</option>
											<option>บริษัท อไหล่ยานยนต์</option>
											<option>บริษัท INDEX</option>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-danger">
											<div class="panel-heading"><h3 class="panel-title">Pattern Message SMS</h3></div>
											<div class="panel-body">
												สวัสดีค่ะบริษัท.... บริการโทรเตือนการชำระเงินค่าผ่อนรถยนต์<br/>
												ซึ้งต้องจ่ายภายในวันที่....<br/>
												เป็นจำนวนเงินทั้งหมด....<br/>
												ขอบคุณค่ะ ...<br/>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-10"></div>
									<div class="col-md-2">
										<form action="#">
											<input type="submit" class="form-control btn-info" value="Send"/>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading"><h3 class="panel-title">Member List</h3></div>
							<div class="panel-body">
								<table class="table table-bordered table-hover table-striped">
									<thead>
										<tr>
											<th>Number</th>
											<th>Phone Number</th>
											<th>Name</th>
											<th>Level</th>
											<th>Money</th>
											<th>Date</th>
										</tr>
									</thead>
									<tbody>
									<%	if (request.getAttribute("customerList") != null) {
									
									List customerList = (List)request.getAttribute("customerList");
									int x = 0;
									for (Iterator iter = customerList.iterator(); iter.hasNext();) {
							  			x++;
							  			MainAgentForm custList = (MainAgentForm) iter.next();
									%>
									<tr>
										<td align="center"><%=x%></td>
										<td><%=custList.getCustID()%></td>
										<td><%=custList.getCustName()%></td>
										<td><%=custList.getCustType()%></td>
										<td><%=custList.getPeriod()%></td>
										<td><%=custList.getCustDate()%></td>
									</tr>
									<%		} 
							 			} else {
									%>
									<tr><td align="center" colspan="4">No Data Found</td></tr>
									<%	} %>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
		</div>
		
		<script src="js/bootstrap.js"></script>
		<script src="js/jquery-1.11.3.min.js"></script>
	</body>
</html>