/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.callcenter.agent.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.callcenter.agent.data.CreateCustomerDB;
import com.callcenter.agent.form.MainAgentForm;
import com.callcenter.util.DateUtil;

public class CreateCustomerAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userName = "";
		HttpSession session = request.getSession();
		userName = (String) session.getAttribute("userName");
		 
		String forwardText = null;
		DateUtil dateUtil = new DateUtil();
		MainAgentForm mainAgentFrom = (MainAgentForm) form;
		
		String custID		= mainAgentFrom.getCustID();
		String custName		= new String(mainAgentFrom.getCustName().getBytes("ISO8859_1"), "utf-8");
		String custAddr		= new String(mainAgentFrom.getCustAddr().getBytes("ISO8859_1"), "utf-8");
		String custEmail	= mainAgentFrom.getCustEmail();
		String custDate		= mainAgentFrom.getCustDate();
		if(!custDate.equals("")) custDate	= dateUtil.CnvToYYYYMMDD(custDate, '-');
		String period		= mainAgentFrom.getPeriod();
		String custType		= mainAgentFrom.getCustType();
		
		String search 		= mainAgentFrom.getSearch();
		String save 		= mainAgentFrom.getSave();
		String update 		= mainAgentFrom.getUpdate();
		
		String massageAlert = "";
		
		if(save!=null){
			boolean chkCustomer = false;
			CreateCustomerDB createCustomerDB = new CreateCustomerDB();
			chkCustomer = createCustomerDB.getCheckMaster(custID, userName);
			
			if(chkCustomer==false){
				createCustomerDB.AddCustomer(custID, custName, custAddr, custEmail, custDate, period, userName);
				createCustomerDB.paymentCustomer(userName, custID, custName, custDate, Integer.parseInt(period));
				massageAlert = "Save ข้อมูลเรียบร้อย !!!";
			}else{
				massageAlert = "มีข้อมูลลูกค้า ท่านนี้แล้ว !!!";
			}
			forwardText = "success";
		}
		if(update!=null){
			CreateCustomerDB createCustomerDB = new CreateCustomerDB();
			createCustomerDB.UpdateCustomer(custID, custName, custAddr, custEmail, custDate, period, userName);
			createCustomerDB.paymentCustomer(userName, custID, custName, custDate, Integer.parseInt(period));
		}
		
		request.setAttribute("massageAlert", massageAlert);
		
		return mapping.findForward(forwardText);
	}
	
}