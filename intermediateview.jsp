<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <title>Intermediate View</title>
    <link rel="stylesheet" type="text/css" href="INTERMEDIATE VIEW.css">
    <link rel="stylesheet" href="home.jsp">
<body>
<%

if(session.getAttribute("name")==null)
{
	response.sendRedirect("login.jsp");
	

}

%>
    <div class="loginbox">
        <img src="pic25.png" class="avatar">
        <h1>Vendor Code</h1>
        <form action="view.jsp" >
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <div class="form-group" >
                <input type="text" id="uname" name="vcode" placeholder="Enter Vendor Code" class="form-control" required>
            </div>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="submit" value="View Details" >
               

        </form>

    </div>

</body>
</head>

</html>