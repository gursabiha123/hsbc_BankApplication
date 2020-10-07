<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String id = request.getParameter("id"); //String id3 = request.getParameter("customrid"); 
String mail = request.getParameter("email");
String phn = request.getParameter("phn");
System.out.println("id="+id+"\n email"+mail);
try{
	System.out.println("TRY");
	Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
	 Connection con=DriverManager.getConnection("jdbc:derby:D:/mybankingdb;create=true","laptop","laptop");

	
	PreparedStatement ps=con.prepareStatement("update details set primarye=?,primaryp = ? where customerid=?");	
	 	
		ps.setString(1, mail);ps.setString(2, phn);
		ps.setString(3, id);
		int res=ps.executeUpdate();
		System.out.println("EXECUTE");
		if(res==1){
			
		out.println("Successful");%>
		
		
		<font color=green>Successful</font>
		<%
		}
		else{
		%>
		
		<font color=red>Not Successful</font>
		<%}
		}
catch(Exception e){}
	
%>