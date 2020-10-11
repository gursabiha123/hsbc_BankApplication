






    <%@page import="com.Bank.entity.Usersdetails" %>
	<%@page import="com.Bank.Service.Bankserviceinterface" %>
	<%@page import="com.Bank.utility.Servicefactory" %>

	<html>
		<head><link href="css/NewFile.css" rel="stylesheet" type="text/css"><link href="css/style.css" rel="stylesheet" type="text/css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		* {box-sizing: border-box;}
		</style>
		</head>
		<body>


<ul>
   <li><a id="l" href="home.html">Home</a></li>
  <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">About</a>
  <div class="dropdown-content">
  <p>All Citizens bank was founded in 1938. It is an Indian multinational banking and financial services company with its registered office in Pune, Maharshtra and corporate office in Mumbai, Maharashtra. It offers a wide range of banking products, financial services for corporate and retail customers through a variety of delivery channels. The bank has a network of 3241 branches and 9826 ATMs across India and has a presence in 15 countries. It is one of the Big Four banks of India.The bank has subsidiaries in the US and Canada, branches in Singapore, Bahrain, Hong Kong, Qatar, Oman as well as representative offices in United Arab Emirates, Bangladesh and Indonesia. Customer is our first priority and our bank outpaced the national average customer satisfaction score of 491.</p>
  </div></li>
  
  <!-- <li><a href="#news"></a></li> -->
  
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Contact</a>
    <div class="dropdown-content">
   <p>See us at- All Citizens Bank, India ,800000 <br/>
      Call at: (+91) 9999999999<br/>
      email-support@All citizens.co.in
      </p> 
    </div>
  </li>
</ul>
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
</form><div class="foot">

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
        </footer></div></body></html>