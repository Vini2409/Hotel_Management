<%--
  Created by IntelliJ IDEA.
  User: vinis
  Date: 12-05-2022
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    body{
        background-image: url("https://images.unsplash.com/photo-1546484396-fb3fc6f95f98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGxhaW4lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
        color:white;
        font-size:30px;
    }
    table{
        font-size:27px;
        border:3px solid white;
        margin-left:150px;
        text-align:center;
        padding:50px;
        background-color: black;
    }
    tr,td{
        border:3px solid white;
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
    /*tr:hover{*/
    /*    transform:scale(1.1);*/
    /*}*/
    nav{
        display:inline-block;
        margin:10px;
        padding:5px;
        float:right;
        background-color: black;
    }
    /*.styling{*/
    /*    margin:60px;*/
    /*    display:inline-block;*/
    /*    padding:5px;*/
    /*    border:3px solid white;*/
    /*    box-shadow: 10px 10px 10px white;*/
    /*}*/
    /*.styling:hover{*/
    /*    transform:scale(1.1);*/
    /*}*/
    button{
        text-align: center;
        padding:20px;
        border-radius: 8px;
        background-color: #87EA4A;
        color:white;
        cursor:pointer;
        margin:7px 5px 5px 5px;
    }
    button:hover{
        transform:scale(1.1);
    }
    /*form{*/
    /*    display:inline-block;*/
    /*}*/
</style>
<html>
<head>
    <title>Available Rooms</title>
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
        nav{
            display:inline-block;
            margin:10px;
            padding:5px;
            float:right;
            background-color: black;
        }
    </style>
</head>
<body>

<%@ page import="com.example.task.managerooms" %>
<jsp:useBean id="obj" class="com.example.task.hotelBean"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<nav>
    <a href="Home.jsp">HOME </a>
    <a href="displayRoomRecep.jsp">ROOMS</a>
    <a href="../common/logout.jsp">LOGOUT</a>
</nav>
<br><br><br>
<h1 style="color:white;text-align: center;">INSERT ROOM </h1><br/><br/>
<h1>
<%
        int status= managerooms.insertroom(obj);
        if(status>0)
            out.println("Inserted successfully");
        else
            out.println("Insertion failed");
%>
</h1>
</body>
</html>
