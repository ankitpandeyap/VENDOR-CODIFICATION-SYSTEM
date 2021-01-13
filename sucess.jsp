<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="sucess.css">
    <link rel="script" href="sucess.js">
</head>

<body>

    <video width="1280" height="720" class="background" autoplay muted loop>
        <source src="https://codepen.jonnitto.ch/BackgroundVideo.mp4" type="video/mp4">
    </video>
    
    <%@ page import="java.sql.*" %>
    
    
    <%
    
    if(session.getAttribute("name")==null)
    {
    	response.sendRedirect("login.jsp");
    	

    }
    
    
    try{
		Connection connection = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "root");
		Statement statement = connection.createStatement();
		String sql ="select * from (select  * from vendorcodeholder order by vendorcodeholder.vendorcodemain desc)	where rownum=1";
		ResultSet rs = statement.executeQuery(sql);
    	while(rs.next()){
			%>
			<h1 style="display:inline-block;margin:150px; ">VENDOR CODE:--<%=rs.getInt("vendorcodemain") %> </h1>

     
     
    <%
    }
    }catch(Exception e){
		out.print(e);
    }
	
    %>
    
  
<footer>
	<a href="home.jsp" style="display:inline-block;  margin:150px ; margin-top:100px; color:orange;" >HOME PAGE </a>     
</footer>
    
  </body>

</html>