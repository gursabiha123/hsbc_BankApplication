
<%@page import="java.util.*,java.sql.*" %>




<%

List<String> i=new ArrayList<String>();
i.add("PAN");
i.add("PHONE");

Random rand = new Random();
int random=rand.nextInt(2);

Connection con=null;




out.println(i.get(random));


System.out.print(random);
%>