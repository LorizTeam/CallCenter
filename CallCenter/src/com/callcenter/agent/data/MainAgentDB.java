package com.callcenter.agent.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.callcenter.login.form.LoginForm;
import com.callcenter.util.DBConnect;
import com.callcenter.util.DateUtil;

public class MainAgentDB {
	
	DBConnect agent 	= new DBConnect();
	Connection conn		= null;
	Statement pStmt 	= null;
	Statement pStmt1 	= null;
	ResultSet rs		= null;

	
	public LoginForm checkLogin(String userName, String passWord) throws Exception {
		
		DBConnect agent = new DBConnect();
		Connection connDB = null;
	 	connDB = agent.getConnectMYSql();
		ResultSet rs = null;
		LoginForm loginForm = new LoginForm();
		
		String sql = "SELECT username, password, name, type " +
				     "FROM employee " +
				     "WHERE username = '"+userName+"' ";
		PreparedStatement pstmt = connDB.prepareStatement(sql);

		rs = pstmt.executeQuery();
		if(rs.next()) {
			loginForm.setTrue(true);
			loginForm.setUserName(rs.getString("username"));
			loginForm.setPassWord(rs.getString("password"));
			loginForm.setName(rs.getString("name"));
			loginForm.setType(rs.getString("type"));
		}
		
		if(connDB != null) {
			connDB.close();
		}
		
		return loginForm;
	}

	public String getDateMaster(String userName) throws Exception 
		{
		String custID = "";
		
		conn = agent.getConnectMYSql();
	 	
	 	String sqlStmt = "SELECT custid " +
		"FROM customer WHERE username = '"+userName+"' ";
	 	
	 	pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlStmt);	
		
		while (rs.next()) {
			custID = rs.getString("custid");
		}
		
		rs.close();
		pStmt.close();
		conn.close();
		
		return custID;
	}
	public int getCountMaster(String userName) throws Exception 
	{
	int i = 0;
	
	conn = agent.getConnectMYSql();
 	
 	String sqlStmt = "SELECT custid " +
	"FROM customer WHERE username = '"+userName+"' ";
 	
 	pStmt = conn.createStatement();
	rs = pStmt.executeQuery(sqlStmt);	
	
	while (rs.next()) {
		i++;
	}
	
	rs.close();
	pStmt.close();
	conn.close();
	
	return i;
}
	public void paymentCustomerList(String userName, String year, int index1, int index2) throws Exception {
		String custID = "", custName = "", docDate = "", period = "", day = "";
		String[] month = new String[12];
		month[0] = "01"; month[1] = "02"; month[2] = "03"; month[3] = "04"; month[4] = "05"; month[5] = "06";
		month[6] = "07"; month[7] = "08"; month[8] = "09"; month[9] = "10"; month[10] = "11"; month[11] = "12";
		
		conn = agent.getConnectMYSql();
		
		String sqlStmt = "SELECT custid, custname, custaddr, custemail, custdate " +
		"FROM customer WHERE username = '"+userName+"' limit "+index1+","+index2+" ";
	 	
	 	pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlStmt);	
		
		while (rs.next()) {
			custID 		= rs.getString("custid");
			custName 	= rs.getString("custname");
			docDate		= rs.getString("custdate");
		//	period		= rs.getString("period");
		
		day = docDate.substring(8, 10);
		String DateUse = "";
		
		for(int i=1,j=0; i<=12; i++,j++){
			
			if (month[j].equals("02")&&Integer.parseInt(day)>=29){ 
				DateUse = year+"-"+month[j]+"-28"; 
			}else if(month[j].equals("04")&&Integer.parseInt(day)>=31){ 
				DateUse = year+"-"+month[j]+"-30";
			}else if(month[j].equals("06")&&Integer.parseInt(day)>=31){ 
				DateUse = year+"-"+month[j]+"-30";
			}else if(month[j].equals("09")&&Integer.parseInt(day)>=31){ 
				DateUse = year+"-"+month[j]+"-30";
			}else if(month[j].equals("11")&&Integer.parseInt(day)>=31){ 
				DateUse = year+"-"+month[j]+"-30";
			}else{
				DateUse = year+"-"+month[j]+"-"+day;
			}
			
			addListCustomer(custID, custName, i, year, day, DateUse);
			
		}	
		
		}	
		
		if(conn != null) {
			conn.close();
		}	
	}
private void addListCustomer(String custID, String custName, int thisMonth, String year, String day, String DateUse) throws Exception {
		String sqlStmt = "";
		
	/*	if(thisMonth==1){
			sqlStmt = "SELECT DATE_ADD('"+DateUse+"',INTERVAL 1 MONTH) as dateadd ";
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlStmt);	
			
			while (rs.next()) {
				DateUse = rs.getString("dateadd");
			}
		}  */
		
		sqlStmt = "INSERT IGNORE INTO payment_customer_list(custid, custname, docdate, type) " +
					"VALUES ('"+custID+"', '"+custName+"', '"+DateUse+"', '1')";
		//System.out.println(sqlStmt);
	    pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlStmt);
		pStmt.close();
		
	}
private String addListCustomer1(String custID, String custName, int thisMonth, String year, String day, boolean chkDay) throws Exception {
		
		String DateUse = "";
		
		switch (thisMonth) {
		case 1: DateUse = year+"-01-"+day;
			break;
		case 2: if(Integer.parseInt(day)<=28){
					DateUse = year+"-02-"+day;
				}else if(Integer.parseInt(day)==29&&chkDay==false){
					DateUse = year+"-03-01";
				}else if(Integer.parseInt(day)==29&&chkDay==true){
					DateUse = year+"-02-29";
				}else if(Integer.parseInt(day)==30){
					DateUse = year+"-03-02";
				}else if(Integer.parseInt(day)==31){
					DateUse = year+"-03-03";
				}
			break;
		case 3: DateUse = year+"-03-"+day;
			break;
		case 4: if(Integer.parseInt(day)==31){
					DateUse = year+"-05-01";
				}else{
					DateUse = year+"-04-"+day;
				}
			break; 
		case 5: DateUse = year+"-05-"+day;
			break;
		case 6: if(Integer.parseInt(day)==31){
					DateUse = year+"-07-01";
				}else{
					DateUse = year+"-06-"+day;
				}
			break;
		case 7: DateUse = year+"-07-"+day;
			break;
		case 8: DateUse = year+"-08-"+day;
			break;
		case 9: if(Integer.parseInt(day)==31){
					DateUse = year+"-10-01";
				}else{
					DateUse = year+"-09-"+day;
				}	
			break;
		case 10: DateUse = year+"-10-"+day;
			break;
		case 11: if(Integer.parseInt(day)==31){
					DateUse = year+"-12-01";
				}else{
					DateUse = year+"-11-"+day;
				}
			break;
		case 12: DateUse = year+"-12-"+day;
			break;
		}
		return DateUse;
	}	
}
