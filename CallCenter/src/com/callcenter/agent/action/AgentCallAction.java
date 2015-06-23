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
import org.omg.CORBA.Request;

import com.callcenter.agent.data.MainAgentDB;
import com.callcenter.agent.form.MainAgentForm;
import com.callcenter.util.DateUtil;

public class AgentCallAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userName = "";
		HttpSession session = request.getSession();
		userName = (String) session.getAttribute("name");
		 
		String forwardText = null;
	
		MainAgentForm mainAgentFrom = (MainAgentForm) form;
		
		String fromDate = mainAgentFrom.getFromDate();
		String toDate 	= mainAgentFrom.getToDate();
		String custID	= mainAgentFrom.getCustID();
		String search 	= mainAgentFrom.getSearch();
	//	String next 	= mainAgentFrom.getNext();
		
		if(search!=null){
		
		request.setAttribute("fromDate", fromDate);
		request.setAttribute("toDate", toDate);	
		request.setAttribute("custID", custID);
		DateUtil dateUtil = new DateUtil();
		if(!fromDate.equals("")) fromDate	= dateUtil.CnvToYYYYMMDD(fromDate, '-');
		if(!toDate.equals("")) 	 toDate 	= dateUtil.CnvToYYYYMMDD(toDate, '-');
		
		
		MainAgentDB mainAgentDB = new MainAgentDB();
		List customerList = mainAgentDB.GetCustomerList("", fromDate, toDate, custID);
		request.setAttribute("customerList", customerList);
		
		forwardText = "search";
		
		}else{
			
		DateUtil dateUtil = new DateUtil();
		String date 	= "";
		date = dateUtil.CnvToYYYYMMDD(dateUtil.curDate(), '-');	
			
		MainAgentDB mainAgentDB = new MainAgentDB();
		List customerList = mainAgentDB.GetCustomerList(date, "", "", "");
		request.setAttribute("customerList", customerList);	
		
		forwardText = "search";
		}
	/*	if(next!=null){
			DateUtil dateUtil = new DateUtil();
			if(!fromDate.equals("")) fromDate	= dateUtil.CnvToYYYYMMDD(fromDate, '-');
			if(!toDate.equals("")) 	 toDate 	= dateUtil.CnvToYYYYMMDD(toDate, '-');
			String date = "";
			if(fromDate.equals("")){
				date = dateUtil.CnvToYYYYMMDD(dateUtil.curDate(), '-');
			}
			
			MainAgentDB mainAgentDB = new MainAgentDB();
			List customerList = mainAgentDB.GetCustomerList(date, fromDate, toDate, custID);

			request.setAttribute("customerList", customerList);	
			
			forwardText = "success";
		}  */
		
		return mapping.findForward(forwardText);
	}
	
private void genaratePeriod(HttpServletRequest request)throws Exception {
		
		HttpSession session = request.getSession();
		String userName = "";
		userName = (String) session.getAttribute("name");

		MainAgentDB mainAgentDB = new MainAgentDB();
		DateUtil dateUtil = new DateUtil();
		String date 	= dateUtil.curDate();
		date = dateUtil.CnvToYYYYMMDD(date, '-');
		String year 	= dateUtil.GetYYYY(date);
		String month 	= dateUtil.GetMM(date);
		String day		= dateUtil.GetDD(date);
		 
		if(day.equals("01")&&month.equals("01")){
			
		int count = 0;
		count = mainAgentDB.getCountMaster("01745");
		
			for(int i=0,j=1; i<count; i++,j++){
				mainAgentDB.paymentCustomerList("01745", year, i);
			}
		}
	}
}