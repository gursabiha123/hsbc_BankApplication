package com.Bank.utility;

import com.Bank.Dao.Bankdao;
import com.Bank.Dao.Bankdaointerface;

public class Daofactory {

	
	public static Bankdaointerface createObject(String nn) {
		Bankdaointerface is=null;
		if(nn.equals("admindaoservice")) {
			is=new Bankdao();
		}
		return is;//return object
	}
}
