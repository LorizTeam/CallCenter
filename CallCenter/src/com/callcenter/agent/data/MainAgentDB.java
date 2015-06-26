package com.callcenter.agent.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.callcenter.agent.form.MainAgentForm;
import com.callcenter.util.DBConnect;
import com.callcenter.util.DateUtil;

public class MainAgentDB {
	
	DBConnect agent 	= new DBConnect();
	Connection conn		= null;
	Statement pStmt 	= null;
	Statement pStmt1 	= null;
	ResultSet rs		= null;
	DateUtil dateUtil = new DateUtil();
	
	public List GetCustomerList(String custDate, String fromDate, String toDate, String custID, String userName) 
	throws Exception { //30-05-2014
		List customerList = new ArrayList();
		String custName = "", docDate = "", custType = "", period = "", money = "" ;
		try {
		
			conn = agent.getConnectMYSql();
			
			String sqlStmt = "SELECT custid, custname, docdate, type, period, money " +
			"FROM payment_customer_list " +
			"WHERE username = '"+userName+"' AND "; 
			if(!custDate.equals("")) sqlStmt = sqlStmt+ "docdate between '"+custDate+"' AND date_add('"+custDate+"',INTERVAL 7 day) AND ";
			if(!fromDate.equals("")) sqlStmt = sqlStmt+ "docdate >= '"+fromDate+"' AND ";
			if(!toDate.equals("")) sqlStmt = sqlStmt+ "docdate <= '"+toDate+"' AND ";
			if(!custID.equals("")) sqlStmt = sqlStmt+ "custid like '"+custID+"%' AND ";
			
			sqlStmt = sqlStmt + "custid <> '' group by custid, period order by docdate asc, custid ";
			
			//System.out.println(sqlStmt);				
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlStmt);	
			while (rs.next()) {
				if (rs.getString("custid") != null) custID = rs.getString("custid"); else custID = "";
				if (rs.getString("custname") != null) custName = rs.getString("custname"); else custName = "";
				if (rs.getString("docdate") != null) docDate = rs.getString("docdate"); else docDate = "";
				if (rs.getString("type") != null) custType = rs.getString("type"); else custType = "";
				if (rs.getString("period") != null) period = rs.getString("period"); else period = "";
				if (rs.getString("money") != null) money = rs.getString("money"); else money = "";
				
				docDate = dateUtil.CnvToDDMMYYYY1(docDate);
				
				customerList.add(new MainAgentForm(custID, custName, docDate, custType, period, money));
			}
			rs.close();
			pStmt.close();
			conn.close();
		} catch (SQLException e) {
		    throw new Exception(e.getMessage());
		}
		return customerList;
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
	public boolean getCheckMaster(String userName, int index1) throws Exception {
		boolean chkCustomer = false;
	String name1 = "", name2 = "";
	conn = agent.getConnectMYSql();
 	
 	String sqlStmt = "SELECT custid " +
	"FROM customer WHERE username = '"+userName+"' limit "+index1+",1 ";
 	
 	pStmt = conn.createStatement();
	rs = pStmt.executeQuery(sqlStmt);	
	
	while (rs.next()) {
		name1 = rs.getString("custid");
	}
	
	rs.close();
	pStmt.close();
	
	sqlStmt = "SELECT DISTINCT(custid) as custid " +
	"FROM payment_customer_list ";
 	
 	pStmt = conn.createStatement();
	rs = pStmt.executeQuery(sqlStmt);	
	
	while (rs.next()) {
		name2 = rs.getString("custid");
	}
	
	rs.close();
	pStmt.close();
	
	if(name1.equals(name2)) chkCustomer = true;
	
	conn.close();
	
	return chkCustomer;
}
	public void paymentCustomerList(String userName, String year, int index1) throws Exception {
		String custID = "", custName = "", docDate = "",  DateUse = ""; int period = 0;
	
		conn = agent.getConnectMYSql();
		
		String sqlStmt = "SELECT custid, custname, custaddr, custemail, custdate, period " +
		"FROM customer WHERE username = '"+userName+"' limit "+index1+",1 ";
	 	
	 	pStmt = conn.createStatement();
		rs = pStmt.executeQuery(sqlStmt);	
		
		while (rs.next()) {
			custID 		= rs.getString("custid");
			custName 	= rs.getString("custname");
			docDate		= rs.getString("custdate");
			period		= Integer.parseInt(rs.getString("period"));
			
		for(int i=1,j=0; i<=period; i++,j++){
			
			sqlStmt = "SELECT DATE_ADD('"+docDate+"',INTERVAL "+j+" MONTH) as perioddate FROM customer WHERE username = '"+userName+"' limit "+index1+",1 ";
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlStmt);	
			
			while (rs.next()) {
				DateUse 		= rs.getString("perioddate");
			}
			
			sqlStmt = "INSERT IGNORE INTO payment_customer_list(custid, custname, docdate, type, period) " +
			"VALUES ('"+custID+"', '"+custName+"', '"+DateUse+"', '1', "+i+")";
			//System.out.println(sqlStmt);
			pStmt = conn.createStatement();
			pStmt.executeUpdate(sqlStmt);
			pStmt.close();
			
		}	
	}	
		if(conn != null) {
			conn.close();
		}	
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
