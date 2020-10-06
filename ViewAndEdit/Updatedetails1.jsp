<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String id = request.getParameter("id"); //String id3 = request.getParameter("customrid"); 
String mail = request.getParameter("altemail");
String phn = request.getParameter("altphn");
System.out.println("id="+id+"\n email"+mail);
try{
	System.out.println("TRY");
	Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
	 Connection con=DriverManager.getConnection("jdbc:derby:D:/mybankingdb;create=true","laptop","laptop");

	 //PreparedStatement ps=con.prepareStatement("update details set primaryp = ? ,primarye=? where customerid=?");
	PreparedStatement ps=con.prepareStatement("update details set secem=? ,secph = ?  where customerid=?");	
	 	
	 
		ps.setString(1, mail);ps.setString(2, phn);
		ps.setString(3, id);
		int res=ps.executeUpdate();
		
		if(res==1){
			//out.println("1");%>
			
			<font color=green>Successful</font>
			<%}
		else
		{
			//out.println(0);
			%>
			<font color=red>Unsuccessful</font>
			<%
		}
		}
catch(Exception e){}
	
%>