<%@ page import="com.cm.model.Room" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mo
  Date: 2017-09-07
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trade</title>
</head>
<body>
<h1>Room Reservation</h1>

    <% Room room = (Room) request.getAttribute("room"); %>
    RoomNumber :  <%= room.name%> <br>

    08:00-12:00: <%= room.headCount[0]%> /20 <br>
    14:00-18:00: <%= room.headCount[1]%> /20 <br>
    20:00-24:00: <%= room.headCount[2]%> /20 <br>
</body>
</html>
