    
    <%@page import="com.Bank.entity.Usersdetails" %>
	<%@page import="com.Bank.Service.Bankserviceinterface" %>
	<%@page import="com.Bank.utility.Servicefactory" %>
    <%String id1 = request.getParameter("id");
    int id = Integer.parseInt(request.getParameter("id"));
    System.out.println("alt"+id);
    
    Bankserviceinterface is=Servicefactory.createObject("adminservice");

    Usersdetails u2=new Usersdetails();
    u2.setCustomerid(id);
    Usersdetails uu=new Usersdetails();
    uu=is.editdetailService(u2);
    if(uu!=null)
    {


%>
<!DOCTYPE html>
<html>
<head><link href="NewFile.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body><center>
<form method="post" action="Updatedetails1.jsp">
<input type="hidden" name="id" value="<%=uu.getCustomerid() %>">
Customer id:<br><input type="text" name="id" value="<%=uu.getCustomerid() %>" disabled><br>
<br>

Name<br>
<input type="text" name="name" id="name" class="name" value="<%=uu.getName()  %>" disabled>
<br>
PAN number :<br>
<input type="text" name="pan" id="pan" class="pan" value="<%=uu.getPANno() %>" disabled>
<br>
DOB/formation :<br>
<input type="text" name="f" value="<%=uu.getFormation()  %>" disabled>
<br>
Pri Email :<br>
<input type="email" name="email" id="n1" class="nn" value="<%=uu.getPm()  %>" disabled>
<br>
Pri Phone :<br>
<input type="text" name="phn" value="<%=uu.getPph() %>" disabled>
<br>

Alt email :<br>
<input type="email" name="altemail" value="<%=uu.getAmail() %>" >
<br>
Alt phn :<br>
<input type="text" name="altphn" value="<%=uu.getAph() %>"   >
<br><br>
<input type="submit" value="submit">
</form>
<%
}

%>
</body>
</html>