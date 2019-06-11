<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
    <%
    	String aa = "jdbc:mysql://localhost:3306/pension?useSSL=false";
    	String bb = "root";
    	String cc = "apmsetup";
    	Connection conn = DriverManager.getConnection(aa, bb, cc);
    	Statement stmt = conn.createStatement();

    	// form 태그 안에 있는 name 
    	String a = request.getParameter("name");
    	String b = request.getParameter("title");
    	String c = request.getParameter("content");

    	String sql = "insert into guest(name,title,content)";
    	sql = "values('" + a + "','" + b + "','" + c + "')";

    	stmt.executeUpdate(sql);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>