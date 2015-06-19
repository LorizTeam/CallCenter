<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<%
	String errorMsg = "";
	String resultMsgBox = "display:none";
	if(request.getAttribute("errorMsg") != null) {
		resultMsgBox = "";
		errorMsg = request.getAttribute("errorMsg").toString();
	}
	if(request.getAttribute("error") != null) {
		resultMsgBox = "";
		errorMsg = request.getAttribute("error").toString();
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <html:base />
    
    <title>เข้าสู่ระบบ </title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/custom-theme/jquery-ui-1.7.2.custom.css" />
	<link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->

#bg {

	background:linear-gradient(to bottom, #F5FFFA 100%, #F5F5F5 100%);

}

#bglogin {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f9f9f9), color-stop(1, #e9e9e9));
	background:-moz-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-webkit-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-o-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-ms-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:linear-gradient(to bottom, #f9f9f9 5%, #e9e9e9 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f9f9f9', endColorstr='#e9e9e9',GradientType=0);
	background-color:#f9f9f9;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	display:block;
	color:#666666;
	border: 1px solid #aaaaaa;
	font-family: Angsana New;
	font-weight: bold;
	font-size: 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
	cursor: default;
}

#barlogin {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
	background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:default;
	color:#777777;
	font-family:Angsana New;
	font-size:22px;
	font-weight:bold;
	padding:0px 0px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}

#myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
	background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:5px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#black;
	font-family:Angsana New;
	font-size:22px;
	font-weight:bold;
	width:85px;
	height:34px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
			margin-top: 10px;
	margin-bottom: 10px;
}
#myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed));
	background:-moz-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-webkit-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-o-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-ms-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed',GradientType=0);
	background-color:#dfdfdf;
}
#myButton:active {
	position:relative;
	top:1px;
}

#box {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffffff), color-stop(1, #f6f6f6));
	background:-moz-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
	background:-webkit-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
	background:-o-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
	background:-ms-linear-gradient(top, #ffffff 5%, #f6f6f6 100%);
	background:linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#f6f6f6',GradientType=0);
	background-color:#ffffff;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:2px;
	border:1px solid #dcdcdc;
	display:inline-block;
	color:#666666;
	font-weight:bold;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}




</style>

	<script type="text/javascript">
	$(document).ready(function(){
	    $("#tabs").tabs();
	})
	</script>
	
	
</head>
   
  <body id="bg">
               <div class="ui-widget" style="<%=resultMsgBox %>">
				<div class="ui-state-error ui-corner-all" style="padding: 0 .7em;"> 
					<p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span> 
					<strong>ผิดพลาด: </strong><%=errorMsg %></p>
				</div>
			</div><br/>
  <div align="center">
  <html:form method="POST" action="/login">
    <table width="200" border="0" cellspacing="0" cellpadding="0" >
      <tr>
        <td height="180">&nbsp;</td>
      </tr>
    </table>
  <table width="300" border="0" align="center" cellpadding="1" cellspacing="3" id="bglogin"  >
<tbody><tr>
<td colspan="2" align="center" style="padding-bottom: 20px; padding-top: 20px; font-family: Angsana New; font-size: 28px;"  id="box" >
  เข้าสู่ระบบ 
  <br><font style="padding-bottom: 20px; padding-top: 20px; font-family: Angsana New; font-size: 36px;">Call Center</font>
  <br></td>
</tr>
<tr>
<td width="110" align="right" id="box">Username : &nbsp;</td>
<td width="181" id="box">&nbsp;<html:text property="userName" ></html:text></td></tr>
<tr>
<td width="110" align="right" id="box">Password : &nbsp;</td>
<td width="181" id="box">&nbsp;<html:password property="passWord" ></html:password></td></tr>
<tr>
  <td colspan="2" align="center" id="box" ><html:submit value="เข้าสู่ระบบ" property="signIn" styleId="myButton"  ><br></html:submit> <html:submit value="ยกเลิก" property="register" styleId="myButton" ><br></html:submit></td>
  </tr>
</tbody></table>
  </html:form>
  </div>
  <SCRIPT TYPE="TEXT/JAVASCRIPT">
			loginForm.userName.focus()
	</SCRIPT>
</body>
</html>
