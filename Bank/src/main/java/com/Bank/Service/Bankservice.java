package com.Bank.Service;


import com.Bank.Dao.Bankdaointerface;
import com.Bank.entity.Usersdetails;
import com.Bank.utility.Daofactory;


public class Bankservice implements Bankserviceinterface{
	private Bankdaointerface id=null;
	
	public Bankservice() {
		id=Daofactory.createObject("admindaoservice");
	}

	public Usersdetails viewdetailsService(Usersdetails u)throws Exception {
		System.out.println(u.getCustomerid());
		return id.viwdetailsDAO(u) ;	
	}
	public Usersdetails editdetailsService(Usersdetails u)throws Exception {
		System.out.println(u.getCustomerid());
		return id.editdetailsDAO(u) ;		
	}

	@Override
	public Usersdetails editdetailService(Usersdetails u) throws Exception {
		// TODO Auto-generated method stub
		return id.editdetailDAO(u) ;
	}

	@Override
	public int upddetailService(Usersdetails u) throws Exception {
		// TODO Auto-generated method stub
		return id.updatedetailDAO(u);
	}

	@Override
	public int updaltdetailService(Usersdetails u) throws Exception {
		// TODO Auto-generated method stub
		return id.updatealtdetailDAO(u);
	}
	}
