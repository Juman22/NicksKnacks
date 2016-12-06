package persistLayer;

import java.util.List;

public class Cart {
	List<Product> items;
	double total;
	
	
	public List<Product> getCart() {
		return items;
	}
	
	public void addToCart(Product p) {
		items.add(p);
	}
}
