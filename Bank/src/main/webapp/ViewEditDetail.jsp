
    <%@page import="com.Bank.entity.Usersdetails" %>
    <%@page import="com.Bank.Service.Bankserviceinterface" %>
    <%@page import="com.Bank.utility.Servicefactory" %>

<%int id = Integer.parseInt(request.getParameter("customrid"));
{%>
<%}%>
<!DOCTYPE html>
<html>
<head>

 
 <link href="css/NewFile.css" rel="stylesheet" type="text/css"><link href="css/style.css" rel="stylesheet" type="text/css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<h1>Details of <%=id %></h1>
<table border="1" vertical>
<tr>
<th>Customer id</th>
<th>Name</th>
<th>PAN number</th>
<th>DOB</th>
<th>Primary phone</th>
<th>Primary email</th>
<th>Alternate phone</th>
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
</table><br><br><br>  
<a id="edits" href="EditDetails.jsp?id=<%=uu.getCustomerid()%>">Click to edit primary phone and/or email</a>
<a id="edits" href="EditdetailsAlt.jsp?id=<%=uu.getCustomerid()%>"> Click to edit alternate phone and/or email</a>
<%}
%><div class="foot">
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
        </footer></div>
</body>
</html>