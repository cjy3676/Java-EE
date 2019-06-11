<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
    <%
    	String aa = "jdbc:mysql://localhost:3306/pension?useSSL=false";
    	String bb = "root";
    	String cc = "apmsetup";
    	Connection conn = DriverManager.getConnection(aa, bb, cc);
    	Statement stmt = conn.createStatement();
    	ResultSet rs; // 테이블 내용을 읽어와서 저장할 공간
    	String sql = " select * from guest";
    	rs = stmt.executeQuery(sql); // select 명령을 실행한 결과값을 rs에 저장 
    	
    	while(rs.next()) // 레코드가 없을때까지 실행
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