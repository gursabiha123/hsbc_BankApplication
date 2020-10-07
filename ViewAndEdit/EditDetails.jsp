<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%String id = request.getParameter("id");
    System.out.println(id);
try{
	Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
	 Connection con=DriverManager.getConnection("jdbc:derby:D:/mybankingdb;create=true","laptop","laptop");
	 
	 PreparedStatement ps=con.prepareStatement("select * from details WHERE customerid=? ");
	 ps.setString(1, id);
		ResultSet res=ps.executeQuery();
	while(res.next()) {
		System.out.println(id);
		

%>
<!DOCTYPE html>
<html>
<head><link href="NewFile.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script>
function validate(){
	var x=new XMLHttpRequest();

	x.open("GET","Updatedetails.jsp",true);
	
	alert("hii lol");
	x.send();
	
	//step 4 how xhr will get response from server
	//state={0,1,2,3,4}
	
	x.onreadystatechange=function(){
		if(x.readyState==4){
			var vv=x.responseText;
			document.getElementById("div").innerHTML=vv;
			
		}
	}
	
}
</script>
</head>
<body><center>
<form method="post" action="Updatedetails.jsp">
<input type="hidden" name="id" value="<%=res.getString(1) %>">
Customer id:<br><input type="text" name="id" value="<%=request.getParameter("id") %>" disabled><br>
<br>

Name<br>
<input type="text" name="name" id="name" class="name" value="<%=res.getString(2)  %>" disabled>
<br>
PAN number :<br>
<input type="text" name="pan" id="pan" class="pan" value="<%=res.getString(3) %>" disabled>
<br>
DOB/formation :<br>
<input type="text" name="f" value="<%=res.getString(4)  %>" disabled>
<br>
Pri Email :<br>
<input type="email" name="email" id="n1" class="nn" value="<%=res.getString(6)  %>" required>
<br>
Pri Phone :<br>
<input type="text" name="phn" value="<%=res.getString(5) %>" required>
<br>

Alt email :<br>
<input type="email" name="altemail" value="<%=res.getString(8) %>" disabled>
<br>
Alt phn :<br>
<input type="text" name="phn" value="<%=res.getString(7) %>" disabled required>
<br><br>
<input type="submit" value="submit">
</form>
<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>