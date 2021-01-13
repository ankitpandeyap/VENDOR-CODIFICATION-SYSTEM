<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processed</title>
</head>
<body>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.util.*" %>
<%
String  LoginId=request.getParameter("uname");
String  PassWord=request.getParameter("psw");

String Error=null;
String Username=null;
String Password=null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "root");
  PreparedStatement ps1 = conn.prepareStatement("select * from  VLOGINCREDENTIALS");
	

	
	ResultSet rs =ps1.executeQuery();
	if(rs.next())
	{ 
		int a=rs.getInt(1);
		 Username=rs.getString(2);
		 Password=rs.getString(3); 
		
	}
	
		
	
	}catch(Exception e){
		out.print(e);
	    }  

 
if(LoginId.equals(Username) && PassWord.equals(Password))
{
	//HTTPSession session=request.getSession();
	session.setAttribute("name", Username);
	response.sendRedirect("home.jsp");
	
	
}
else{
	
	 //Error="Incorrect  Please Try Again";

	 //Thread.sleep(1000);
	 response.sendRedirect("Fail.jsp");

	
}
	
%>

<h1><%=LoginId %></h1>

<h1><%=PassWord %></h1>






</body>
</html>