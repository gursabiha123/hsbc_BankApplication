package com.Bank.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Bank.entity.Usersdetails;
public class Bankdao implements Bankdaointerface {
	private Connection con=null;
	public Bankdao()
	{
		try {
		Class.forName("org.apache.derby.jdbc.EmbeddedDriver");		
		 con=DriverManager.getConnection("jdbc:derby:D:/mybankingdb;create=true","laptop","laptop");
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}
	public Usersdetails viwdetailsDAO(Usersdetails id)throws Exception
	{	
		Usersdetails ue=null;
		
		 //System.out.println("D"+id.getCustomerid()+id.getAph()+id.getAmail());
		 PreparedStatement ps=con.prepareStatement("select * from details where customerid=?");
			ps.setInt(1, id.getCustomerid());
			ResultSet res=ps.executeQuery();
			while(res.next()){
				
				ue=new Usersdetails();
				ue.setCustomerid(res.getInt(1));
				ue.setName(res.getString(2));
				ue.setPANno(res.getString(3));
				ue.setFormation(res.getString(4));
				ue.setPph(res.getString(5));
				ue.setPm(res.getString(6));
				ue.setAph(res.getString(7));
				ue.setAmail(res.getString(8));
			}
			return ue;
			}

	@Override
	public Usersdetails editdetailsDAO(Usersdetails u)throws Exception {
		// TODO Auto-generated method stub
		Usersdetails ue=null;
		//Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		 //Connection con=DriverManager.getConnection("jdbc:derby:D:/mybankingdb;create=true","laptop","laptop");
	 
		 PreparedStatement ps=con.prepareStatement("select * from details WHERE customerid=? ");
		 ps.setInt(1, u.getCustomerid());
			ResultSet res=ps.executeQuery();
		while(res.next()) {
			ue=new Usersdetails();
			ue.setCustomerid(res.getInt(1));
			ue.setName(res.getString(2));
			ue.setPANno(res.getString(3));
			ue.setFormation(res.getString(4));
			ue.setPph(res.getString(5));
			ue.setPm(res.getString(6));
			ue.setAph(res.getString(7));
			ue.setAmail(res.getString(8));
		}
		return ue;
			




	}
	@Override
	public Usersdetails editdetailDAO(Usersdetails u) throws Exception {
		
		Usersdetails ue2=null;
		
		 PreparedStatement ps=con.prepareStatement("select * from details WHERE customerid=? ");
		 ps.setInt(1, u.getCustomerid());
			ResultSet res=ps.executeQuery();
		while(res.next()) {
			ue2=new Usersdetails();
			ue2.setCustomerid(res.getInt(1));
			ue2.setName(res.getString(2));
			ue2.setPANno(res.getString(3));
			ue2.setFormation(res.getString(4));
			ue2.setPph(res.getString(5));
			ue2.setPm(res.getString(6));
			ue2.setAph(res.getString(7));
			ue2.setAmail(res.getString(8));
		}
		return ue2;
	
}
	@Override
	public int updatedetailDAO(Usersdetails u) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps=con.prepareStatement("update details set primarye=?,primaryp = ? where customerid=?");	
	 	
		ps.setString(1, u.getPm());ps.setString(2, u.getPph());
		ps.setInt(3, u.getCustomerid());
		int res=ps.executeUpdate();
		return res;
	}
	
	public int updatealtdetailDAO(Usersdetails u) throws Exception {
		 PreparedStatement ps=con.prepareStatement("update details set secph = ? ,secem=? where customerid=?");
			ps.setString(1, u.getAph());
			ps.setString(2, u.getAmail());
			ps.setInt(3, u.getCustomerid());
			return ps.executeUpdate();
	}
}
