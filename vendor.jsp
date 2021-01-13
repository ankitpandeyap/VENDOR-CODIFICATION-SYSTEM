<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%@page import= "java.util.Date" %>

		<%
		
		if(session.getAttribute("name")==null)
		{
			response.sendRedirect("login.jsp");
			

		}
		
		
		//name table	
		//String Plant=request.getParameter("Plant");
		String NameInitials=request.getParameter("NameInitials");
		String VendorName=request.getParameter("VendorName");
		String DealingWith=request.getParameter("DealingWith");
		String Name2 =request.getParameter("Name2");
		String Country =request.getParameter("Country");
		String State =request.getParameter("State");
		String City =request.getParameter("City");
		String Zipcode =request.getParameter("Zipcode");
		String Address1 =request.getParameter("Address1");
		String Address2 =request.getParameter("Address2");
		String SearchTerm =request.getParameter("SearchTerm");
		String Postbox =request.getParameter("Postbox");
        //contact details
		String V_TELE1 =request.getParameter("V_TELE1");
		String V_TELE2=request.getParameter("V_TELE2");
		String V_TELEEXTNS=request.getParameter("V_TELEEXTNS");
		String V_EMAIL=request.getParameter("V_EMAIL");
		String V_WEBSITE=request.getParameter("V_WEBSITE");
		String V_CONTACTPERSON=request.getParameter("V_CONTACTPERSON");
		String V_MOBNO=request.getParameter("V_MOBNO");
		String V_FAXNO1=request.getParameter("V_FAXNO1");
		String V_FAXNO2=request.getParameter("V_FAXNO2");
		String V_FAXEXTNS=request.getParameter("V_FAXEXTNS");
		
		//excise details
		String V_DRUGLICDATE=request.getParameter("V_DRUGLICDATE");
		String V_DRUGLINCO=request.getParameter("V_DRUGLINCO");
		String V_ECCCODEA=request.getParameter("V_ECCCODEA");
		String V_ECCCODEN=request.getParameter("V_ECCCODEN");
		String V_EXCISECOMM=request.getParameter("V_EXCISECOMM");
		String V_EXCISECLASS=request.getParameter("V_EXCISECLASS");
		String V_EXCISEDIV=request.getParameter("V_EXCISEDIV");
		String V_EXCISEINDVENDOR=request.getParameter("V_EXCISEINDVENDOR");
		String V_EXCISERANGE=request.getParameter("V_EXCISERANGE");
		String  V_EXCISEREGNO=request.getParameter("V_EXCISEREGNO");
        String  V_REGN=request.getParameter("V_EXCISEREGN");
		String  V_ST=request.getParameter("V_ST");
		String  V_TYPE=request.getParameter("V_TYPE");
		String  V_VEND=request.getParameter("V_VEND");
		
		//Tax details
		String  V_VATREGNO=request.getParameter("V_VATREGNO");
		String  V_PAN=request.getParameter("V_PAN");
		String  V_CENVAT=request.getParameter("V_CENVAT");
		String  V_CGCT=request.getParameter("V_CGCT");
		String  V_MICR=request.getParameter("V_MICR");
		String  V_GSTIN=request.getParameter("V_GSTIN");
		String  V_SERVICETAX=request.getParameter("V_SERVICETAX");
		String  V_CST=request.getParameter("V_CST");
		String  V_CSTREGNO=request.getParameter("V_CSTREGNO");
		String  V_LSTREGNO=request.getParameter("V_LSTREGNO");
		String  V_REGDATE=request.getParameter("V_REGDATE");
		String  V_REGEXDATE=request.getParameter("V_REGEXDATE");
		String  V_SALESTAX=request.getParameter("V_SALESTAX");
		String  V_SEC=request.getParameter("V_SEC");
		
		//bank details
		String  V_BANKCODE=request.getParameter("V_BANKCODE");
		String  V_BANKCITY=	request.getParameter("V_BANKCITY");
		String  V_BANKNAME=request.getParameter("V_BANKNAME");
		String  V_IFSC=request.getParameter("V_IFSC");
		String  V_BRANCHCODE=request.getParameter("V_BRANCHCODE");
		String  V_BRANCHADDR=request.getParameter("V_BRANCHADDR");
		String  V_ACCNO=request.getParameter("V_ACCNO");
		String  V_BANKCODE2=request.getParameter("V_BANKCODE2");
		String  V_BANKNAME2=request.getParameter("V_BANKNAME2");
		String  V_IFSC2=request.getParameter("V_IFSC2");
		String  V_BRANCHCODE2=request.getParameter("V_BRANCHCODE2");
		String  V_BRANCHADDR2=request.getParameter("V_BRANCHADDR2");
		String  V_ACCNO2=request.getParameter("V_ACCNO2");
		String  V_BANKCITY2=request.getParameter("V_BANKCITY2");
		
		//String Plant="BSP";
		try{
		  
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "root");
		PreparedStatement ps1 = conn.prepareStatement("insert into VENDORCODEHOLDER(VENDORCODEMAIN) values(vendorcode.nextval)");
			
		
			
			int x=ps1.executeUpdate();
			if(x!=0){
				out.print("Details entered successfully...");
			}else{
				out.print("Something went wrong!");
			}
		
		
		PreparedStatement ps2 = conn.prepareStatement("insert into VNAME values(vendorcode.currval,?,?,?,'BSP',?,?,?,?,?,?,?,?,?)");
			
			ps2.setString(1,NameInitials);
			ps2.setString(2,VendorName);
			ps2.setString(3,Name2);
			//ps2.setString(4, Plant);
			ps2.setString(4, Address1);
		    ps2.setString(5, Address2);
			ps2.setString(6, Country);
			ps2.setString(7, City);
			ps2.setString(8, State);
			ps2.setString(9,Zipcode);
			ps2.setString(10,SearchTerm);
			ps2.setString(11,Postbox);
			ps2.setString(12,DealingWith);
			
			
			int y=ps2.executeUpdate();
			if(y!=0){
				out.print("Details entered successfully...2");
			}else{
				out.print("Something went wrong!");
			}
			
			
PreparedStatement ps3 = conn.prepareStatement("insert into VBANK values(vendorcode.currval,'1',?,?,?,?,?,?,?,'2',?,?,?,?,?,?,?)");
			
			ps3.setString(1,V_BANKCODE);
			ps3.setString(2,V_BANKNAME);
			ps3.setString(3,V_BANKCITY);
			ps3.setString(4, V_IFSC);
			ps3.setString(5, V_BRANCHCODE);
			ps3.setString(6, V_BRANCHADDR);
			ps3.setString(7, V_ACCNO);
			ps3.setString(8, V_BANKCODE2);
			ps3.setString(9, V_BANKNAME2);
			ps3.setString(10,V_BANKCITY2);
			ps3.setString(11,V_IFSC2);
			ps3.setString(12,V_BRANCHCODE2);
			ps3.setString(13,V_BRANCHADDR2);			
			ps3.setString(14,V_ACCNO2);
			int z=ps3.executeUpdate();
			if(z!=0){
				out.print("Details entered successfully...3");
			}else{
				out.print("Something went wrong!");
			}
			
			
			
PreparedStatement ps4 = conn.prepareStatement("insert into VTAX values(vendorcode.currval,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps4.setString(1,V_VATREGNO);
			ps4.setString(2,V_PAN);
			ps4.setString(3,V_CENVAT);
			ps4.setString(4, V_CGCT);
			ps4.setString(5, V_MICR);
		    ps4.setString(6, V_GSTIN);
			ps4.setString(7, V_SERVICETAX);
			ps4.setString(8, V_CST);
			ps4.setString(9, V_CSTREGNO);
			ps4.setString(10,V_LSTREGNO);
			ps4.setString(11,V_REGDATE);
			ps4.setString(12,V_REGEXDATE);
			ps4.setString(13,V_SALESTAX);
			ps4.setString(14,V_SEC);			
			
			int a=ps4.executeUpdate();
			if(a!=0){
				out.print("Details entered successfully...4");
			}else{
				out.print("Something went wrong!");
			}
			
			
			
PreparedStatement ps5 = conn.prepareStatement("insert into VCONTACT values(vendorcode.currval,?,?,?,?,?,?,?,?,?,?)");
			
			ps5.setString(1,V_TELE1);
			ps5.setString(2,V_TELE2);
			ps5.setString(3,V_TELEEXTNS);
			ps5.setString(4, V_EMAIL);
			ps5.setString(5, V_WEBSITE);
		    ps5.setString(6, V_MOBNO);
			ps5.setString(7, V_CONTACTPERSON);
			ps5.setString(8, V_FAXNO1);
			ps5.setString(9, V_FAXNO2);
			ps5.setString(10,V_FAXEXTNS);
			
			int b=ps5.executeUpdate();
			if(b!=0){
				out.print("Details entered successfully...5");
			}else{
				out.print("Something went wrong!");
			}
			
PreparedStatement ps6 = conn.prepareStatement("insert into VEXCISE values(vendorcode.currval,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps6.setString(1,V_DRUGLICDATE);
			ps6.setString(2,V_DRUGLINCO);
			ps6.setString(3,V_ECCCODEA);
			ps6.setString(4, V_ECCCODEN);
			ps6.setString(5, V_EXCISECOMM);
		    ps6.setString(6, V_EXCISECLASS);
			ps6.setString(7, V_EXCISEDIV);
			ps6.setString(8, V_EXCISEINDVENDOR);
			ps6.setString(9, V_EXCISERANGE);
			ps6.setString(10,V_EXCISEREGNO);
			ps6.setString(11,V_REGN);
			ps6.setString(12,V_ST);
			ps6.setString(13,V_TYPE);
			ps6.setString(14,V_VEND);
			
			int c=ps6.executeUpdate();
			if(c!=0){
				out.print("Details entered successfully...6");
			}else{
				out.print("Something went wrong!");
			}
			
			
			if(a>0 && b>0 ){
			 if(c>0 && x>0 ){
				 if(y>0 && z>0 ){
					 String redirectURL = "sucess.jsp";
			         response.sendRedirect(redirectURL);

			
			}
			}
			}   else
			{
				String redirectURL = "Fail.jsp";
		         response.sendRedirect(redirectURL);
				
			}
	        
		}catch(Exception e){
		out.print(e);
	    }   	

		
		
		
        
		
		%>
    


</body>
</html>