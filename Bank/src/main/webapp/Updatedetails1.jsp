






    <%@page import="com.Bank.entity.Usersdetails" %>
	<%@page import="com.Bank.Service.Bankserviceinterface" %>
	<%@page import="com.Bank.utility.Servicefactory" %>

	<html>
		<head><link href="NewFile.css" rel="stylesheet" type="text/css"><link href="Style.css" rel="stylesheet" type="text/css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		* {box-sizing: border-box;}
		</style>
		</head>
		<body>



<%
String id2 = request.getParameter("uniqu"); //String id3 = request.getParameter("customrid"); 
int id = Integer.parseInt(request.getParameter("id"));
String id1 = request.getParameter("altmail");
String phn = request.getParameter("altph");

Bankserviceinterface is=Servicefactory.createObject("adminservice");

Usersdetails u2=new Usersdetails();
u2.setCustomerid(id);
u2.setAph(phn);
u2.setAmail(id1);
Usersdetails uu=new Usersdetails();
int k=is.updaltdetailService(u2);
	
		if(k==1){
			
			%>
		

  <form style="top: 40%; left: 32%; position: absolute;width: 110%;" action="" class="form-container">

    <input style="text-align:center;color:green;font-size:30px;width: 100%;" type="text" placeholder="Enter Email" name="email" value="Your Updates have been Successful!" disabled>
    <button type="button" class="btn cancel" onclick="location.href='click.html';">Go Back</button>
			
			<%
		}

		else{
		%>
		<input style="text-align:center;color:crimson;font-size:30px;width: 100%;" type="text" placeholder="Enter Email" name="email" value="Your Updates have Not been Successful" disabled>
    	<button type="button" class="btn cancel" onclick="location.href='click.html';">Go Back</button>	
		<%}

	

	
%>
</form>

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
        </footer></body></html>