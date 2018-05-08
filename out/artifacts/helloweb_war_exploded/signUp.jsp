<%--
  Created by IntelliJ IDEA.
  User: mo
  Date: 2017-09-12
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="english">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <link type="text/css"
          href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
    <title>Sign Up</title>
</head>
<body>
<h1>Sign Up</h1>
<form method="POST" action="/UserManagement" name="frmAddUser">
    User ID : <input type="text" name="id" placeholder="id"> <br />
    Password : <input
        type="text" name="password" placeholder="password"> <br />
    Name : <input
        type="text" name="name" placeholder="name"> <br />
    Email : <input
        type="text" name="email" placeholder="email"> <br />
    Gender : <input
        type="text" name="gender" placeholder="gender"> <br />
    Description : <input
        type="text" name="description"placeholder="description"> <br />
    <input type="submit" class="button" name="submit" value="add">
</form>
</body>
</html>
