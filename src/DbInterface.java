import java.util.ArrayList;
import java.util.List;

//DbInterface contains methods for building relevant data from ResultSets
public class DbInterface {
	//getResults for servlet
	//Pass null values for non-fields (i.e. min = -1, name = "")
	public List<Product> getSearchResults(String name, int min, int max) {
		List<Product> rs = new ArrayList<Product>();
		DbAccess db = new DbAccess();
		
		if(name != "" && min < 0) {
			rs = db.getProductsByName(name);	
			
		}
		else if(name == "") {
			rs = db.getProductsByPriceRange(min, max);
		} 
		else {
			rs = db.getProductsByName(name, min, max);
		}
		
		return rs;
	}
	
	public List<Product> getProducts() {
		DbAccess db = new DbAccess();	
		return db.getTopProducts();
	}
	
	public void reduceProduct(int id, int amt) {
		DbAccess db = new DbAccess();	
		db.reduceProductQuantity(id, amt);
	}
}
