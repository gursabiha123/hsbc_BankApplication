
<%@page import="com.Bank.entity.Usersdetails" %>
<%@page import="com.Bank.Service.Bankserviceinterface" %>
<%@page import="com.Bank.utility.Servicefactory" %>


    
    <%String id1 = request.getParameter("id");
    int id = Integer.parseInt(request.getParameter("id"));
    System.out.println(id);
    

    Bankserviceinterface is=Servicefactory.createObject("adminservice");

    Usersdetails u1=new Usersdetails();
    u1.setCustomerid(id);
    Usersdetails uu=new Usersdetails();
    uu=is.editdetailsService(u1);
    if(uu!=null)
    {

		

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
<input type="hidden" name="id" value="<%=uu.getCustomerid() %>">
Customer id:<br><input type="text" name="id" value="<%=uu.getCustomerid() %>" disabled><br>
<br>

Name<br>
<input type="text" name="name" id="name" class="name" value="<%=uu.getName()  %>" disabled>
<br>
PAN number :<br>
<input type="text" name="pan" id="pan" class="pan" value="<%=uu.getPANno()%>" disabled>
<br>
DOB/formation :<br>
<input type="text" name="f" value="<%=uu.getFormation()  %>" disabled>
<br>
Pri Email :<br>
<input type="email" name="email" id="n1" class="nn" value="<%=uu.getPm() %>" required>
<br>
Pri Phone :<br>
<input type="text" name="phn" value="<%=uu.getPph() %>" required>
<br>

Alt email :<br>
<input type="email" name="altemail" value="<%=uu.getAph() %>" disabled>
<br>
Alt phn :<br>
<input type="text" name="phn" value="<%=uu.getAmail() %>" disabled required>
<br><br>
<input type="submit" value="submit">
</form>
<%
}

%>
</body>
</html>