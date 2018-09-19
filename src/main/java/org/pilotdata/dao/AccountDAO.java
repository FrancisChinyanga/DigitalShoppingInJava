package org.pilotdata.dao;

import org.pilotdata.entities.Account;
import org.pilotdata.entities.Product;
import org.pilotdata.model.PaginationResult;
import org.pilotdata.model.ProductInfo;
 
public interface AccountDAO {
	public Account findAccount(String username);
}
