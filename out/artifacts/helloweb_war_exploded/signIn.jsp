<%@ page import="com.cm.model.Room" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mo
  Date: 2017-09-12
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
</head>
<body>
<h1>Room List</h1>

<div>
    <%
        ArrayList<Room> al = (ArrayList) request.getAttribute("roomList");
        for (Room room : al)
        { %>

    <form method="post" action="/SignIn">
    <td><input type="text" name="name" value="<%=room.name%>"> <%= " "+room.type + " "+room.capacity%>

            <input type="submit" value="OK">
    </td>

    </form>

    <% } %>
    <%--<c:forEach items="${roomList}" var="room">--%>
        <%--<tr>--%>
            <%--<td align="center">${room.name} ${room.type} ${room.capacity}</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
</div>
</body>
</html>
