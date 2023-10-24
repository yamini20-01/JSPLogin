<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,javax.sql.*" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
0061<br> 
Yamini<br>
88

<br>
<%

String url="jdbc:mysql://localhost:3306/aliens";
String uname="root";

String pass="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,uname,pass);
String query="select * from student where user_id=3;";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);
rs.next();
%>

 Roll:<%= rs.getString(1) %> <br>
 Name:<%= rs.getString(2) %> <br>

</body>
</html>