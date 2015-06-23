<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>
<%@ page import="com.callcenter.agent.form.MainAgentForm" %>
<%
	String fromDate = "", toDate = "", custID = "", name = "";
	
	if(request.getAttribute("fromDate")!=null){
		fromDate = request.getAttribute("fromDate").toString();
	}
	if(request.getAttribute("toDate")!=null){
		toDate = request.getAttribute("toDate").toString();
	}
	if(request.getAttribute("custID")!=null){
		custID = request.getAttribute("custID").toString();
	}
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
<<<<<<< HEAD
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
=======
		<html:form action="/agentCall" method="POST">
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
>>>>>>> origin/master
	        			<div id="navbar" class="collapse navbar-collapse">
	          				<ul class="nav navbar-nav navbar-right">
	            				<li align="right"><a href="#contact">Login Name : <%=name%> </a></li>
	            				<li align="right"><a href="#contact">Login out</a></li>
	          				</ul>
	        			</div><!-- /.nav-collapse -->
	      			</div><!-- /.container -->
    	</nav>
		<div class="container-fuild">
				
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-5">
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
								
								
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="panel panel-primary">
							<div class="panel-heading"><h3 class="panel-title">Member List</h3></div>
							<div class="panel-body">
								
									<form action="">
										<div class="row">
											<div class=""></div>
											<div class="col-md-3">
												<input type="text" id="fromDate" name="fromDate" value="<%=fromDate%>" class="form-control" placeholder="Form Date">
											</div>
											<div class="col-md-3">
												<input type="text" id="toDate" name="toDate" value="<%=toDate%>" class="form-control" placeholder="To Date">
											</div>
<<<<<<< HEAD
											<div class="col-md-6 form-inline">
												<input type="text" class="form-control" placeholder="Search">
=======
											<div class="col-md-4 form-inline">
												<input type="text" id="custID" name="custID" value="<%=custID%>" class="form-control" placeholder="Telephone">
>>>>>>> origin/master
												<input class="btn btn-info" name="search" type="submit" value="Search" />
											</div>
										</div>
									</form>

								<div><br/></div>
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
		</html:form>
		<script src="js/bootstrap.js"></script>
		<script src="js/jquery-1.11.3.min.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script>
		  $(function() {
		    $( "#fromDate" ).datepicker({ dateFormat: 'dd/mm/yy' });
		     // แทรกโค้ต jquery  
   			// $( "#fromDate" ).datepicker({ dateFormat: 'yy-mm-dd' });  
    		 // รูปแบบวันที่ที่ได้จะเป็น 2009-08-16  
		    
		  });
		  
		  $(function() {
		    $( "#toDate" ).datepicker({dateFormat: 'dd/mm/yy' });
		  });
	    </script>
	</body>
</html>