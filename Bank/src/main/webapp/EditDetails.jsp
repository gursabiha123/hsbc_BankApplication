
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
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
#l
{
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}

</style>
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



<center>
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