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
					<h3 class="panel-title">Agent</h3>
				</div>
				<div class="panel-body">
				<html:form action="/mainAgent" method="POST">
					<div class="container">
					<div class="row">
						<div class="col-md-2">

						</div>
						<div class="col-md-2">
							<input type="text" id="fromDate" name="fromDate" class="form-control" placeholder="Form Date">
						</div>
						<div class="col-md-2">
							<input type="text" id="toDate" name="toDate" class="form-control" placeholder="To Date">
						</div>
						<div class="col-md-4 form-inline">
							<input type="text" class="form-control" placeholder="Search">
							<input class="btn btn-info" name="search" type="submit" value="Search" />
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
										<th>Period</th>
										<th>Date</th>
									</tr>
								</thead>
								<tbody>
									<%	if (request.getAttribute("customerList") != null) {
									List customerList = (List)request.getAttribute("customerList");
									List sentList = new ArrayList();
									int x = 0;
									for (Iterator iter = customerList.iterator(); iter.hasNext();) {
							  			x++;
							  			MainAgentForm custList = (MainAgentForm) iter.next();
							  			
							  			MainAgentForm sentForm  = new MainAgentForm();
							  			sentForm.setCustID(custList.getCustID());
							  			sentForm.setCustName(custList.getCustName());
							  			sentForm.setCustType(custList.getCustType());
							  			sentForm.setPeriod(custList.getPeriod());
							  			sentForm.setCustDate(custList.getCustDate());
							  			 sentList.add(sentForm);
					
									%>
									<tr>
										<td align="center"><%=x%> </td>
										<td><%=custList.getCustID()%></td>
										<td><%=custList.getCustName()%></td>
										<td><%=custList.getCustType()%></td>
										<td><%=custList.getPeriod()%></td>
										<td><%=custList.getCustDate()%></td>
									</tr>
									<%		}
									 
									request.setAttribute("sentList", sentList); 
									
							 			} else {
									%>
									<tr><td align="center" colspan="4">No Data Found</td></tr>
									<%	} %>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2 col-md-offset-10">
						<!--  <a href="agentCall.jsp" class="btn btn-info">Next ></a>  -->
							<input class="btn btn-info" name="next" type="submit" value="Next" />
						</div>
					</div>
				</div>
				</html:form>
			</div>
		</div>
		
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