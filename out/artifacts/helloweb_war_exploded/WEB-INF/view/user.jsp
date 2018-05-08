<%--
  Created by IntelliJ IDEA.
  User: mo
  Date: 2017-09-14
  Time: 9:46 AM
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
    <title>User Account Management</title>
</head>
<body>
<h1>User Account</h1>
<form method="POST" action="/UserManagement" name="frmAddUser">
    User ID : <input type="text" readonly="readonly" name="id"
                     value="<c:out value="${id}" />" /> <br />
    Password : <input
        type="text" name="password"
        value="<c:out value="${password}" />" /> <br />
    Name : <input
        type="text" name="name"
        value="<c:out value="${name}" />" /> <br />
    Email : <input
        type="text" name="email"
        value="<c:out value="${email}" />" /> <br />
    Gender : <input
        type="text" name="gender"
        value="<c:out value="${gender}" />" /> <br />
    Description : <input
        type="text" name="description"
        value="<c:out value="${description}" />" /> <br />
    <input type="submit" class="button" name="submit" value="update">
    <input type="submit" class="button" name="submit" value="delete">
</form>
</body>
</html>
