<%@ page import="com.example.task.authendication" %><%--
  Created by IntelliJ IDEA.
  User: vinis
  Date: 16-05-2022
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGIN VALIDATION</title>
    <style>
        body{
            background-image: url("https://images.unsplash.com/photo-1546484396-fb3fc6f95f98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGxhaW4lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
            color:white;
            font-size:40px;
            text-align:center;
        }
        a{
            text-decoration: none;
            color:navajowhite;
            font-size:30px;
            text-align: center;
            padding:7px;
            margin:5px;
            border:2px solid navajowhite;
        }
    </style>
</head>
<body>
<%@ page import="com.example.task.authendication" %>
<jsp:useBean id="obj" class="com.example.task.hotelBean"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<br><br>
<h1 style="color:white;text-align: center;">LOGIN STATUS</h1><br/><br/>

<%
    int status= authendication.guestlogin(obj);
    if(status>0) {
        out.println("Login credential success");
        out.println("</br></br>");
        out.println("<a href='guestHomePage.jsp'>GO TO Home PAGE</a>");
    }
    else {
        out.println("Login credential failed");
        out.println("</br></br>");
        out.println("<a href='guestLogin.jsp'>LOGIN AGAIN</a>");
    }

%>

</body>
</html>
