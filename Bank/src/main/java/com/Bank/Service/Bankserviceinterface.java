package com.Bank.Service;

import com.Bank.entity.Usersdetails;

public interface Bankserviceinterface {

	 Usersdetails viewdetailsService(Usersdetails u)throws Exception;
	 
	 Usersdetails editdetailsService(Usersdetails u)throws Exception;
	 Usersdetails editdetailService(Usersdetails u)throws Exception;
	 int upddetailService(Usersdetails u)throws Exception;
	 int updaltdetailService(Usersdetails u)throws Exception;
}
