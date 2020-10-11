
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
<font style="font-size:18px">Customer id:</font><br><input type="text" name="id" value="<%=uu.getCustomerid() %>" disabled><br>
<br>

<font style="font-size:18px">Name:</font><br>
<input type="text" name="name" id="name" class="name" value="<%=uu.getName()  %>" disabled>
<br>
<font style="font-size:18px">PAN number :</font><br>
<input type="text" name="pan" id="pan" class="pan" value="<%=uu.getPANno()%>" disabled>
<br>
<font style="font-size:18px">DOB :</font><br>
<input type="text" name="f" value="<%=uu.getFormation()  %>" disabled>
<br>
<font style="font-size:18px">Primary Email :</font><br>
<input type="email" name="email" id="n1" class="nn" value="<%=uu.getPm() %>" required>
<br>
<font style="font-size:18px">Primary Phone :</font><br>
<input type="text" name="phn" value="<%=uu.getPph() %>" required>
<br>

<font style="font-size:18px">Alternate email :</font><br>
<input type="email" name="altemail" value="<%=uu.getAph() %>" disabled>
<br>
<font style="font-size:18px">Alternate phone :</font><br>
<input type="text" name="phn" value="<%=uu.getAmail() %>" disabled required>
<br><br>
<input type="submit" value="submit">
</form>
<%
}

%>
<footer class="footer-area">
    <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        
                        <p class="copyright">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved </p>
                        
                    </div>
                </div>
            </div>
        </div>
        </footer>
</body>
</html>