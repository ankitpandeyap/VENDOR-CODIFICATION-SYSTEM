<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>home</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="homestyle.css">
	<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic'
		rel='stylesheet'>
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
</head>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%

if(session.getAttribute("name")==null)
{
	response.sendRedirect("login.jsp");
	

}




%>
<body>

	<div class="bgimage">
		<div class="menu">
			

			<div class="leftmenu">
				<h2> STEEL AUTHORITY OF INDIA </h2>
				
			</div>

			<div class="rightmenu">
				<ul>
					<li id="fisrtlist" style="margin-left:64px;"> HOME </li>
					<li style="margin-left:28px;"><a href="test.jsp">CREATE NEW VENDOR</a></li>
					<li style="margin-left:28px;"><a href="intermediateview.jsp"> VIEW VENDOR DETAILS </a></li>
					<li style="margin-left:28px;"> <a href="change.html"> CHANGE STATUS</a></li>
					<li style="margin-left:28px;"><a href="https://www.sail-bhilaisteel.com/index.php/about-us" >ABOUT US </a> </li>
					<li style="margin-left:28px;"> <a href="sail.co.in/en/contact-us">CONTACT US</a></li>
					<li style="margin-left:28px;"><a href="logout.jsp">LOG OUT</a> </li>
					<li style="margin-left:28px;"> WELCOME <%=session.getAttribute("name") %> </li>
				</ul>
			</div>

		</div>

		<div class="text">
			<h1> WELCOME TO BSP </h1>
			<h5> VENDOR CODIFICATION SYSTEM </h5>
			<h4> • FOUNDED IN 1955 • </h4>
			<h3> WE ARE THE ONE OF THE WORLD’S TOP MANUFACTURERS   OF RAILS, PLATES, STRUCTURALS, REBARS, WIRE AND RODS. </h3>
			<!-- <button id="buttonone"> like share </button>
			<button id="buttontwo"> Subscribe </button>  -->
		</div>
		<div>
			<!-- <tr>
				<td style="padding:20px;"><a href="Emp_table.html"><button class="btn-default">CREATE NEW VENDOR</button></a></td>
				

				<td style="padding:20px;"><a href="Dep_table.html"><button class="btn-default">VIEW VENDOR DETAILS</button></a></td>
							

				<td style="padding:20px;"><a href="MD_table.html"><button class="btn-default"> DELETE VENDOR DETAILS </button></a></td>
						

			</tr> -->
		</div>

	</div>

</body>

</html>