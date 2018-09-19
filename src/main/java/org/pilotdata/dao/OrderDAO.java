package org.pilotdata.dao;
 
import java.util.List;
 
import org.pilotdata.model.CartInfo;
import org.pilotdata.model.OrderDetailInfo;
import org.pilotdata.model.OrderInfo;
import org.pilotdata.model.PaginationResult;
 
public interface OrderDAO {
 
	 public void saveOrder(CartInfo cartInfo);
	 
	 public PaginationResult<OrderInfo> listOrderInfo(int page,
	            int maxResult, int maxNavigationPage);
	    
	 public OrderInfo getOrderInfo(String orderId);
	    
	 public List<OrderDetailInfo> listOrderDetailInfos(String orderId);
 
}