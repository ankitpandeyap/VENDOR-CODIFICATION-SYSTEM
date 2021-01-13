<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
<title>LOGIN</title>

</head>
<body>

    <div class="loginbox">
        <img src="pic7.png" class="avatar">
        <h1>Login Here</h1>
        <form action="Login1.jsp" method="POST">

            <div class="form-group">
                <label>Username</label>
                <input type="text" id="uname" name="uname" placeholder="Enter login Id" class="form-control" required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password" id="psw" name="psw" placeholder="Enter login Password" class="form-control" required>
            </div>

            <div class="form group">
                <input type="submit"  value="Login">
                <a href="#">Forgot your password?</a>
                <br>
                <a href="#">Don't have an account?</a>
            </div>

        </form>

    </div>


</html>