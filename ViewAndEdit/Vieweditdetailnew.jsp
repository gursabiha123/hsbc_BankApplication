<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>

<%String id = request.getParameter("customrid");%>
<!DOCTYPE html>
<html>
<head>

 
 <link href="NewFile.css" rel="stylesheet" type="text/css">
  <!--  <h2>The text entered was : </h2><%=id%> -->
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Details of <%=id %></h1>
<table border="1" vertical>
<tr>
<th>Customer id</th>
<th>Name</th>
<th>PAN number</th>
<th>DOB/formation</th>
<th>Primary ph.</th>
<th>Primary email</th>
<th>Alternate ph.</th>
<th>Alternate email</th>

</tr>
<%
try{
	Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
	 Connection con=DriverManager.getConnection("jdbc:derby:D:/mybankingdb;create=true","laptop","laptop");

	 PreparedStatement ps=con.prepareStatement("select * from details where customerid=?");
		ps.setString(1, id);
		ResultSet res=ps.executeQuery();
		while(res.next()){
	
%>
<tr>
<td><%=res.getString(1) %></td>
<td><%=res.getString(2) %></td>
<td><%=res.getString(3) %></td>
<td><%=res.getString(4) %></td>
<td><%=res.getString(5) %></td>
<td><%=res.getString(6) %></td>
<td><%=res.getString(7) %></td>
<td><%=res.getString(8) %></td>
<td><a href="EditDetails.jsp?id=<%=res.getString(1)%>">update Click to edit primary ph and/or email</a></td>
<td><a href="EditdetailsAlt.jsp?id=<%=res.getString(1)%>">update Click to edit alternate ph and/or email</a></td>
</tr>
<%


%>
</table><br><!-- 
<form action=""> 
<input type="submit" id="edits" value="Click to edit primary ph and/or email" onClick="window.location.href='EditDetails.jsp?id=<%=res.getString(1)%>'" />
</form><br>
<form action="edit1.html">
<input type="submit" id="edits1" value="Click to edit Alternate ph and/or email" />
</form> -->
<%}

} catch (Exception e) {
e.printStackTrace();
}

%>
</body>
</html>