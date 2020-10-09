package com.Bank.Dao;

import com.Bank.entity.Usersdetails;

public interface Bankdaointerface {

	
	// Usersdetails viewdetailsService(int id)throws Exception;
	
	Usersdetails viwdetailsDAO(Usersdetails id)throws Exception;

	Usersdetails editdetailsDAO(Usersdetails u) throws Exception;

	Usersdetails editdetailDAO(Usersdetails u) throws Exception;

	int updatedetailDAO(Usersdetails u) throws Exception;
	int updatealtdetailDAO(Usersdetails u) throws Exception;
}
