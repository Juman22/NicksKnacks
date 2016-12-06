package queryLayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import persistLayer.Product;


public class Cart {
	
	String name;
	double total;
	double price;
	int priceItem;
	Map<String, Object> root2;
	ArrayList<Product> mainTwo = new ArrayList<Product>();
	
	
	public Cart(){
		total = 0;
		root2 = new HashMap<String, Object>();
	}
	
	public void addToCart(Product newProd, int quantity){
		this.total += newProd.price;
		price = newProd.price;
		name = newProd.name;
			
		boolean found = false;
		for(Product p : mainTwo){
			if(p.getSku().equals(newProd.getSku())) {
				p.setQuantity(p.getQuantity() + quantity);
				found = true;
			}	
		}
		
		if(!found)
			mainTwo.add(newProd);
		
	}
	
	public Map<String, Object> getCart(){
		root2.put("products", mainTwo);
		root2.put("total", total);
		return root2;
	}
	
	

}
