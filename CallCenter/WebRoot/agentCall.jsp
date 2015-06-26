<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>
<%@ page import="com.callcenter.agent.form.MainAgentForm" %>
<%
	String fromDate = "", toDate = "", custID = "", name = "", userName = "";
	
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
	if(session.getAttribute("userName") != null) {
		userName = (String) session.getAttribute("userName");
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
		<script language="javascript">
		function getCustomer(tcustID, tcustName, tperiod, tcustMoney, tcustDate) {
				document.mainAgentForm.tranID.value = tcustID;	 
				document.mainAgentForm.tranName.value = tcustName;
				document.mainAgentForm.tranPeriod.value = tperiod;
				document.mainAgentForm.tranMoney.value = tcustMoney;
				document.mainAgentForm.tranDate.value = tcustDate;				
	}			
	function tel(){
	var alertMassage = document.getElementById('tranID');
	var telNo = 9+document.getElementById("tranID").value;
	var userName = document.getElementById("userName").value;
	 
	if(alertMassage.value != ""){ 
	var myWindow = window.open("https://192.168.1.250/abc/call1.php?number="+telNo+"&username="+userName+" ", "myWindow", "width=200, height=100")

 	setTimeout (function() {myWindow.close();}, 30000);
 	
 	}else{
  
 	alert("โปรดระบุ หมายเลขโทรศัพท์ ก่อนทำการโทร"); 
 	
 	}
 }
 	function endTel(){
	
	var myWindow = window.open("https://192.168.1.250/abc/hangup.php?username="+userName+" ", "myWindow", "width=200, height=100")

 	setTimeout (function() {myWindow.close();}, 500);
 	
 }

		</script>
	</head>
	<body>
		<div class="container-fuild">
			<nav class="navbar navbar-fixed-top navbar-inverse">
	      		<div class="container-fuild">
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
    		<html:form action="/agentCall" method="POST">
			<div class="row">
				<div class=""></div>
				<div class="col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading"><h3 class="panel-title">Member Detail</h3></div>
							<div class="panel-body">
							
								<table class="table table-bordered">
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
											<td> <input type="text" class="form-control" id="tranID" name="tranID" ></td>
											<td> <input type="text" class="form-control" id="tranName" name="tranName" ></td>
											<td> <input type="text" class="form-control" id="tranPeriod" name="tranPeriod" ></td>
											<td> <input type="text" class="form-control" id="tranMoney" name="tranMoney" ></td>
											<td> <input type="text" class="form-control" id="tranDate" name="tranDate" >
											<input type="hidden" id="userName" name="userName" value="<%=userName%>" />
											
											</td>
										</tr>
									</tbody>
								</table>
								<div class="row">
									<div class="col-md-2">
										<div class="center-block">
											<img class="profile-img" src="img/call.png" onclick="tel();"  />
											<center><label>Customer Call</label></center>
										</div>
									</div>
									<div class="col-md-2 ">
										<div class="center-block">
											<img class="profile-img" src="img/endcall.png" onclick="endTel();" />
											<center><label>Customer End</label></center>
										</div>
									</div>
									<div class="col-md-2 col-md-offset-1">
										<div class="center-block">
										
											<img class="profile-img" src="img/call.png"  />
											<center><label>Whisper Call</label></center>
										</div>
									</div>
									<div class="col-md-2 ">
										<div class="center-block">
											<img class="profile-img" src="img/endcall.png" />
											<center><label>Whisper End</label></center>

										</div>
									</div>
									<div class="col-md-3 ">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>Supervisor</th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>นายสุรเฆท ทองใจดี</td>
													<td>online</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div><br/></div>
								<div class="row">
									<div class="col-md-2">
										<label>Call Level</label>
										<select class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select>
									</div>
									<div class="col-md-2">
										<label>Call Type</label>
										<select class="form-control">
											<option>เลือก</option>
											<option>ติดต่อได้</option>
											<option>ติดต่อได้</option>
										</select>
									</div>
									<div class="col-md-4">
										<label>Select Pattern Message</label>
										<select class="form-control">
											<option>เลือก</option>
											<option>บริษัท TOYOTA</option>
											<option>บริษัท HOME PRO</option>
											<option>บริษัท อไหล่ยานยนต์</option>
											<option>บริษัท INDEX</option>
										</select>
									</div>
									<div class="col-md-3">
										<label>Create Pattern Message</label>
										<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Create Pattern Message</button>
										
										<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-lable="myModalLable">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="myModalLabel">Pattern Message</h4>
													</div>
													<div class="modal-body">
														<form>
          													<div class="form-group">
												            	<label for="recipient-name" class="control-label">Title:</label>
												            	<input type="text" class="form-control" id="recipient-name">
												          	</div>
												          	<div class="form-group">
												            	<label for="message-text" class="control-label">Message:</label>
												            	<textarea class="form-control" id="message-text"></textarea>
												          	</div>
												        </form>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        												<button type="button" class="btn btn-primary">Save changes</button>
													</div>
												</div>
											</div>
										</div>
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
									<div class="col-md-5">
										<label>Send SMS</label>
										<br/>
										<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModalsms">Send SMS</button>
										
										<div class="modal fade" id="myModalsms" tabindex="-1" role="dialog" aria-lable="myModalLable">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="myModalLabel">SMS</h4>
													</div>
													<div class="modal-body">
														<form>
          													<div class="form-group">
												            	<label for="recipient-name" class="control-label">Phone Number:</label>
												            	<input type="text" class="form-control" id="recipient-name">
												          	</div>
												          	<div class="form-group">
												            	<label for="message-text" class="control-label">Message:</label>
												            	<textarea class="form-control" id="message-text"></textarea>
												          	</div>
												        </form>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        												<button type="button" class="btn btn-primary">Save changes</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading"><h3 class="panel-title">Member List</h3></div>
							<div class="panel-body">
									<div class="row">
										<div class=""></div>
										<div class="col-md-3">
											<input type="text" id="fromDate" name="fromDate" value="<%=fromDate%>" class="form-control" placeholder="Form Date">
										</div>
										<div class="col-md-3">
											<input type="text" id="toDate" name="toDate" value="<%=toDate%>" class="form-control" placeholder="To Date">
										</div>
										<div class="col-md-6 form-inline">
											<input type="text" id="custID" name="custID" value="<%=custID%>" class="form-control" placeholder="Telephone">
											<input class="btn btn-info" name="search" type="submit" value="Search" />
										</div>
									</div>
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
										<td><a href="javascript:getCustomer('<%=custList.getCustID()%>','<%=custList.getCustName()%>',
										'<%=custList.getPeriod()%>','<%=custList.getCustMoney()%>','<%=custList.getCustDate()%>');"><%=custList.getCustID()%></a></td>
										<td><%=custList.getCustName()%></td>
										<td><%=custList.getCustType()%></td>
										<td><%=custList.getCustMoney()%></td>
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
			</html:form>
		</div>
		<script src="js/bootstrap.js"></script>
		<script src="js/jquery-1.11.3.min.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script src="js/modal.js"></script>
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