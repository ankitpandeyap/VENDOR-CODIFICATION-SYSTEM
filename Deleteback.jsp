<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
</head>
<body>
<%@ page import ="java.sql.*"%>

<% 


if(session.getAttribute("name")==null)
{
	response.sendRedirect("login.jsp");
	

}
PreparedStatement ps1=null;
PreparedStatement ps2=null;
String MESSAGE=null;
String vendorcode =request.getParameter("vendorcode");
String vcode=request.getParameter("vcode");
String status=request.getParameter("status");	
int a=0;
int b=0;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "root");
if(status=="ACTIVE"){
	 ps1=conn.prepareStatement("update vendorcodeholder set status='INACTIVE' WHERE vendorcodemain=? and status='ACTIVE'");	
	//ps1.setString(1, "INACTIVE");
	ps1.setString(1,vcode);
	 a=ps1.executeUpdate();
}
else if(status=="INACTIVE"){
		 ps2=conn.prepareStatement("update vendorcodeholder set status='ACTIVE' WHERE vendorcodemain=? and status='INACTIVE';");	
		//ps2.setString(1, "ACTIVE");
		ps2.setString(1,vcode);
		 b=ps2.executeUpdate();
}	
	if(a>0 || b>0){              
	
	String url="home.jsp";
	 response.sendRedirect(url);
}
		
	%>
	
     <h1 style="display:inline-block;margin:150px;"><%=MESSAGE %></h1>	
	<%
	}catch(Exception e){
		out.print(e);
    }   	
	




%>

</body>
</html>