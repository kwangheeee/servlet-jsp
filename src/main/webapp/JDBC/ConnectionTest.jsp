<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="common.ConnectionUtill"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection con = ConnectionUtill.getConnection2(application);
	PreparedStatement psmt = con.prepareStatement("select sysdate from dual");
	ResultSet rs = psmt.executeQuery();
	rs.next();
	out.print(rs.getString(1));
	%>
</body>
</html>