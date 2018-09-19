package org.pilotdata.dao;

import org.pilotdata.entities.Product;
import org.pilotdata.model.PaginationResult;
import org.pilotdata.model.ProductInfo;
 
public interface ProductDAO {
	 public Product findProduct(String code);
	    
	 public ProductInfo findProductInfo(String code) ;
	  
	    
	 public PaginationResult<ProductInfo> queryProducts(int page,
	                       int maxResult, int maxNavigationPage  );
	    
	 public PaginationResult<ProductInfo> queryProducts(int page, int maxResult,
	                       int maxNavigationPage, String likeName);
	 
	 public void save(ProductInfo productInfo);
	    
    
}
