package com.Bank.utility;

import com.Bank.Service.Bankservice;
import com.Bank.Service.Bankserviceinterface;

public class Servicefactory {

		private Servicefactory() {
			
		}
		
		public static Bankserviceinterface createObject(String nn) {
			Bankserviceinterface is=null;
			if(nn.equals("adminservice")) {
				is=new Bankservice();
			}
			return is;//return object
		}
	
	
}
