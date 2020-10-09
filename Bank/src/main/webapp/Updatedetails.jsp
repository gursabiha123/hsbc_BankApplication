
	<%@page import="com.Bank.entity.Usersdetails" %>
	<%@page import="com.Bank.Service.Bankserviceinterface" %>
	<%@page import="com.Bank.utility.Servicefactory" %>
    
   
 
 <link href="NewFile.css" rel="stylesheet" type="text/css">   
<%
String id1 = request.getParameter("id"); //String id3 = request.getParameter("customrid"); 
String mail = request.getParameter("email");
String phn = request.getParameter("phn");

int id = Integer.parseInt(request.getParameter("id"));

Bankserviceinterface is=Servicefactory.createObject("adminservice");

Usersdetails u2=new Usersdetails();
u2.setCustomerid(id);
u2.setPph(phn);
u2.setPm(mail);
Usersdetails uu=new Usersdetails();
int k=is.upddetailService(u2);
	
		if(k==1){		
		%>
		<font color=green style="top: 50%; left: 40%; position: absolute;font-size:30px">Your Updates have been Successful!</font>
		<%
		}
		else{
		%>
		
		<font color=red style="top: 50%; left: 40%; position: absolute;font-size:30px">Your Updates have Not been Successful</font>
		<%}


	
%>