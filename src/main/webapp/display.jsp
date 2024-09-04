<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.example.DatabaseConnection" %>
<html>
<head>
    <title>FectchData</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Data from Database</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>City</th>
            <th>State</th>
        </tr>
        <%
            DatabaseConnection db = new DatabaseConnection();
            ResultSet rs = db.getData();
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("city") %></td>
            <td><%= rs.getString("state") %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
