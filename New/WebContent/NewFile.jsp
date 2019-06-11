<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	String aa = "jdbc:mysql://localhost:3306/test?useSSL=false";
	String bb = "root";
	String cc ="apmsetup";
	Connection conn=DriverManager.getConnection(aa,bb,cc);
	Statement stmt = conn.createStatement();
	// String sql ="create table member(aa int)";
	// String sql = "create table member(name char(10), age int)";
	String sql = "insert into member(name, age) values('RD',26)";
	stmt.executeUpdate(sql); // => 변화O , executeQuery => 변화X
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>hello java
</body>
</html>