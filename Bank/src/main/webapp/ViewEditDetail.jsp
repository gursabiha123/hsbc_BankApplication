
    <%@page import="com.Bank.entity.Usersdetails" %>
    <%@page import="com.Bank.Service.Bankserviceinterface" %>
    <%@page import="com.Bank.utility.Servicefactory" %>

<%int id = Integer.parseInt(request.getParameter("customrid"));
{%>
<%}%>
<!DOCTYPE html>
<html>
<head>

 
 <link href="NewFile.css" rel="stylesheet" type="text/css">

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
Usersdetails iu=new Usersdetails();
iu.setCustomerid(id);

Bankserviceinterface is=Servicefactory.createObject("adminservice");

Usersdetails u1=new Usersdetails();
u1.setCustomerid(id);
Usersdetails uu=new Usersdetails();
 uu=is.viewdetailsService(u1);
if(uu!=null)
{
	
	/*
	System.out.println("User Information below");
	System.out.println("Name :"+uu.getName());
	System.out.println("Address :"+uu.getAddress());
	System.out.println("Email :"+uu.getEmail());
	System.out.println("Password :"+uu.getPassword());*/

%>
<tr>
<td><%=uu.getCustomerid()%></td>
<td><%=uu.getName() %></td>
<td><%=uu.getPANno() %></td>
<td><%=uu.getFormation() %></td>
<td><%=uu.getPph() %></td>
<td><%=uu.getPm() %></td>
<td><%=uu.getAph() %></td>
<td><%=uu.getAmail()%></td>

</tr>
</table><br>
<a href="EditDetails.jsp?id=<%=uu.getCustomerid()%>">update Click to edit primary ph and/or email</a>
<a href="EditdetailsAlt.jsp?id=<%=uu.getCustomerid()%>">update Click to edit alternate ph and/or email</a>
<%}
%>
</body>
</html>