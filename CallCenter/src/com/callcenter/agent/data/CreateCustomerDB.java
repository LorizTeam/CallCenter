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

public class CreateCustomerDB {
	
	DBConnect agent 	= new DBConnect();
	Connection conn		= null;
	Statement pStmt 	= null;
	Statement pStmt1 	= null;
	ResultSet rs		= null;
	DateUtil dateUtil = new DateUtil();
	
	public List GetCustomerList(String custDate, String fromDate, String toDate, String custID) 
	throws Exception { //30-05-2014
		List customerList = new ArrayList();
		String custName = "", docDate = "", custType = "", period = "" ;
		try {
		
			conn = agent.getConnectMYSql();
			
			String sqlStmt = "SELECT custid, custname, docdate, type, period " +
			"FROM payment_customer_list " +
			"WHERE "; 
			if(!custDate.equals("")) sqlStmt = sqlStmt+ "docdate between '"+custDate+"' AND date_add('"+custDate+"',INTERVAL 7 day) AND ";
			if(!fromDate.equals("")) sqlStmt = sqlStmt+ "docdate >= '"+fromDate+"' AND ";
			if(!toDate.equals("")) sqlStmt = sqlStmt+ "docdate <= '"+toDate+"' AND ";
			if(!custID.equals("")) sqlStmt = sqlStmt+ "custid like '"+custID+"%' AND ";
			
			sqlStmt = sqlStmt + "custid <> '' group by custid, period order by custid, docdate";
			
			//System.out.println(sqlStmt);				
			pStmt = conn.createStatement();
			rs = pStmt.executeQuery(sqlStmt);	
			while (rs.next()) {
				if (rs.getString("custid") != null) custID = rs.getString("custid"); else custID = "";
				if (rs.getString("custname") != null) custName = rs.getString("custname"); else custName = "";
				if (rs.getString("docdate") != null) docDate = rs.getString("docdate"); else docDate = "";
				if (rs.getString("type") != null) custType = rs.getString("type"); else custType = "";
				if (rs.getString("period") != null) period = rs.getString("period"); else period = "";
				
				docDate = dateUtil.CnvToDDMMYYYY1(docDate);
				
				customerList.add(new MainAgentForm(custID, custName, docDate, custType, period));
			}
			rs.close();
			pStmt.close();
			conn.close();
		} catch (SQLException e) {
		    throw new Exception(e.getMessage());
		}
		return customerList;
	 }

	public void AddCustomer(String custID, String custName, String custAddr, String custEmail, String custDate, String period, String userName)  throws Exception{
		conn = agent.getConnectMYSql();
		
		String sqlStmt = "INSERT IGNORE INTO customer(custid, custname, custaddr, custemail, custdate, period, username) " +
		"VALUES ('"+custID+"', '"+custName+"', '"+custAddr+"', '"+custEmail+"', '"+custDate+"', '"+period+"', '"+userName+"')";
		//System.out.println(sqlStmt);
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlStmt);
		pStmt.close();
		conn.close();
	}
	public void UpdateCustomer(String custID, String custName, String custAddr, String custEmail, String custDate, String period, String userName)  throws Exception{
		conn = agent.getConnectMYSql();
		
		String sqlStmt = "UPDATE customer set custname = '"+custName+"', custaddr = '"+custAddr+"', " +
				"custemail = '"+custEmail+"', custdate = '"+custDate+"', period '"+period+"' " +
		"WHERE username = '"+userName+"' and custid = '"+custID+"'";
		//System.out.println(sqlStmt);
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlStmt);
		pStmt.close();
		
		sqlStmt = "DELETE payment_customer_list "+
		"WHERE username = '"+userName+"' and custid = '"+custID+"'";
		//System.out.println(sqlStmt);
		pStmt = conn.createStatement();
		pStmt.executeUpdate(sqlStmt);
		pStmt.close();

		conn.close();
	}
	public void paymentCustomer(String userName, String custID, String custName, String custDate, int period) throws Exception {
		String   DateUse = "";
	
		conn = agent.getConnectMYSql();
			
		for(int i=1,j=0; i<=period; i++,j++){
			
			String sqlStmt = "SELECT DATE_ADD('"+custDate+"',INTERVAL "+j+" MONTH) as perioddate FROM customer WHERE username = '"+userName+"' and custid = '"+custID+"' ";
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
		if(conn != null) {
			conn.close();
		}	
	}
	public boolean getCheckMaster(String custID, String userName) throws Exception {
	
	boolean chkCustomer = false;
	conn = agent.getConnectMYSql();
 	
 	String sqlStmt = "SELECT custid " +
	"FROM customer WHERE username = '"+userName+"' and custid = '"+custID+"' ";
 	
 	pStmt = conn.createStatement();
	rs = pStmt.executeQuery(sqlStmt);	
	
	while (rs.next()) {
		chkCustomer = true;
	}
	
	rs.close();
	pStmt.close();
	
	return chkCustomer;
	}
}
