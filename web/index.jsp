<%--
  Created by IntelliJ IDEA.
  User: mo
  Date: 2017-08-18
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Navigation</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="index.css">
</head>
<body>

<h1>Welcome to Room Reservation System</h1>

    <div class="function" id="f1">
        <form method="post" action="/UserManagement">
            <input type="date"  name="date" value="2018-05-10" >
            <input type="submit" value="OK">
        </form>
    </div>

    <div class="function" id="f2">
        <form>
            <input type="button" class="button" value="Sign In" onclick="signIN()">
        </form>

        <form>
            <input type="button" class="button" value="Sign Up" onclick="signOut()">
        </form>
    </div>

    <script>
        function signIN(){
            window.location.href="trade.jsp";
        }
        function signOut(){
            window.location.href="signUp.jsp";
        }
    </script>



</body>
</html>
