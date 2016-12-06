package queryLayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


public class Cart {
	
	String name;
	double total;
	double price;
	int priceItem;
	Map<String, Object> root2;
	ArrayList<Product> mainTwo = new ArrayList<>();
	
	
	public Cart(){
		total = 0;
		root2 = new HashMap<>();
	}
	
	public void addToCart(Product newProd){
		this.total += newProd.price;
		price = newProd.price;
		name = newProd.name;
		mainTwo.add(newProd);
		
	}
	
	public Map<String, Object> getCart(){
		root2.put("products", mainTwo);
		return root2;
	}
	
	

}
