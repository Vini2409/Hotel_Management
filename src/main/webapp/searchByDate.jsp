<%--
  Created by IntelliJ IDEA.
  User: vinis
  Date: 17-05-2022
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search By Date</title>
    <style>
        body{
            background-image: url("https://images.unsplash.com/photo-1546412414-e1885259563a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI1fHxob3RlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60");
            background-repeat: no-repeat;
            color:black;
        }
        table{
            font-size:27px;
            border:3px solid black;
            padding:10px;
            margin-top:100px;
            margin-left:650px;
            box-shadow: 10px 10px 5px black;
        }
        table:hover{
            transform:scale(1.1);
        }
    </style>
</head>
<body>
<table>
<form name="f1" method="post" action="searchByDateSuccess.jsp" id="f1">
    <tr><td>Check In: </td><td><input style="font-size:25px;" type="date" name="checkin" placeholder="dd-mm-yyy"/></td></tr><br><br>
    <tr><td>Check Out: </td><td><input style="font-size:25px;" type="date" name="checkout" placeholder="dd-mm-yyy"/></td></tr><br><br>
    <tr><td><input style="font-size:25px;margin-left:150px;margin-top:50px;padding:5px;" type="submit" value="SUBMIT"/></td></tr>
</form>
</table>
</body>
</html>