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

<form action="/SignIn">
    RoomNumber : <input type="text" name="RoomNumber" value="<c:out value="${RoomNumber}" />" />
    <input type="submit" class="button" name="submit" value="submit">
</form>
    08:00-10:00: ${ts0} /20 <br>
    10:00-12:00: ${ts1} /20 <br>
    12:00-14:00: ${ts2} /20 <br>
    14:00-16:00: ${ts3} /20 <br>
    16:00-18:00: ${ts4} /20 <br>
    18:00-20:00: ${ts5} /20 <br>
    20:00-22:00: ${ts6} /20 <br>
</body>
</html>
