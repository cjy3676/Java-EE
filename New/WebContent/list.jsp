<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
    <%
    	String aa = "jdbc:mysql://localhost:3306/pension?useSSL=false";
    	String bb = "root";
    	String cc = "apmsetup";
    	Connection conn = DriverManager.getConnection(aa, bb, cc);
    	Statement stmt = conn.createStatement();
    	ResultSet rs; // ���̺� ������ �о�ͼ� ������ ����
    	String sql = " select * from guest";
    	rs = stmt.executeQuery(sql); // select ����� ������ ������� rs�� ���� 
    	
    	while(rs.next()) // ���ڵ尡 ���������� ����
    	{
    	out.println(rs.getString("name"));
    	out.println(rs.getString("title"));
    	out.println("<p>");
    	}
    	
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