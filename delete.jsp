<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<%@ page import = "java.sql.*" %>
<head>
    <title>Change Status</title>
    <link rel="stylesheet" type="text/css" href="CHANGE STATUS.css">
    <link rel="stylesheet" href="home.jsp">
<body>
<%
ResultSet name=null;
PreparedStatement pstatus=null;
String status=null;
String checked=null;

String vcode=request.getParameter("vcode");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SYSTEM", "root");
	
	pstatus=conn.prepareStatement("select status from vendorcodeholder where vendorcodemain=?");
	pstatus.setString(1,vcode);
	ResultSet rs=pstatus.executeQuery();
	
	while(rs.next())
	{
		status=rs.getString("status");
	}

 if(status=="ACTIVE")
 {
	 checked="ACTIVE";
 }
 else
 {
	 checked="INACTIVE";
 }
}catch (Exception e)
{
	out.println(e);
}
 %>

    <div class="loginbox">
        <img src="pic25.png" class="avatar">
        <h1>Change Status</h1>
        <form action="Deleteback.jsp" method="POST">
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <div class="form-group">
                <input type="text" id="uname" name="uname" placeholder="Enter Vendor Code" classs="form-control" required>
            </div>
            <label for="status"><strong>CURRENT STATUS</strong></label><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <!--   <label for="status">Active</label>
             <input type="radio" name="Status" id="status" value="active"
                        	 <%=checked %> style="width: 10%;">
            <label for="status">Inactive</label>
            <input type="radio" name="Status" id="status" value="inactive"
                        	<%=checked%> style="width: 10%;"> -->
                 
			                  <%=checked %>
			<div class="form group">
                <input type="submit" name="" value="Apply Changes"  >
               
            </div>

        </form>

    </div>

</body>
</head>

</html>