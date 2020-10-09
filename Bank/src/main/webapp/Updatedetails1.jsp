






    <%@page import="com.Bank.entity.Usersdetails" %>
	<%@page import="com.Bank.Service.Bankserviceinterface" %>
	<%@page import="com.Bank.utility.Servicefactory" %>

<link href="NewFile.css" rel="stylesheet" type="text/css">

<%
String id2 = request.getParameter("uniqu"); //String id3 = request.getParameter("customrid"); 
int id = Integer.parseInt(request.getParameter("id"));
String id1 = request.getParameter("e");
String phn = request.getParameter("i");

Bankserviceinterface is=Servicefactory.createObject("adminservice");

Usersdetails u2=new Usersdetails();
u2.setCustomerid(id);
Usersdetails uu=new Usersdetails();
int k=is.updaltdetailService(u2);

	
	
		
		if(k==1){
			%>
			<font color=green style="top: 50%; left: 40%; position: absolute;font-size:30px">Your Updates have been Successful! </font>
			<%
		}
		else{
%>
		
		<font color=red style="top: 50%; left: 40%; position: absolute;font-size:30px">Not Successful</font>
		<%
		
		}

	

	
%>