<%--
  Created by IntelliJ IDEA.
  User: mo
  Date: 2017-08-18
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.cm.Utils"%>
<html>
<head>
    <title>主页</title>
</head>
<p>

<form class="form-signin" action="/bill" method="post">
    <div class="alert alert-warning">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Warning!</strong> 该用户不存在!
    </div>
    <h2 class="form-signin-heading">用户登录</h2>
    <input type="text" name="username" class="form-control" placeholder="用户名" required autofocus>
    <input type="password" name="password" class="form-control" placeholder="密码" required>
    <div class="checkbox">
        <label>
            <input type="checkbox" name="remember-me" value="on"> 记住我
        </label>
    </div>
    <button class="btn btn-primary btn-block" type="submit">确定</button>
</form>

</p>
</html>

