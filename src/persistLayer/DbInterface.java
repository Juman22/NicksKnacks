package persistLayer;
import java.sql.SQLException; 
import java.util.ArrayList;
import java.util.List;
import queryLayer.DbAccess;

//DbInterface contains methods for building relevant data from ResultSets
//Connects to DbAccess for SQL related functions
//DbInterface is called from servlet (DbConnector.java)

public class DbInterface {
	//getResults for servlet
	//Pass null values for non-fields (i.e. min = -1, name = "")
	public List<Product> getSearchResults(String name, int min, int max) {
		List<Product> rs = new ArrayList<Product>();
		DbAccess db = new DbAccess();

		if(name != null && name != "" && min < 0) {
			rs = db.getProductsByName(name);			
		}
		else if(min > 0 && (name == null || name == "")) {
			rs = db.getProductsByPriceRange(min, max);
		} 
		else {
			rs = db.getProductsByName(name, min, max);
		}
		
		return rs;
	}
	
	public Product getProductBySku(String sku) {
		DbAccess db = new DbAccess();		
		return db.getProductBySku(sku);
	}
	public List<Product> getProducts() {
		DbAccess db = new DbAccess();
		return db.getTopProducts();
	}
	
	public Account getAccount(String name, String pass) {
		DbAccess db = new DbAccess();
		
		try {
			return db.getAccount(name, pass);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void reduceProduct(int id, int amt) {
		DbAccess db = new DbAccess();	
		db.reduceProductQuantity(id, amt);
	}
	
	public Account createAccount(String userName, String pass, String firstName, String lastName) {
		Account acct = new Account(userName, pass, firstName, lastName);	
		
		DbAccess db = new DbAccess();
		db.createAccount(userName, pass, firstName, lastName);
		
		return acct;
	}
	
	public void updateAccount(String userName, String pass, String firstName, String lastName) {
		DbAccess db = new DbAccess();

		if(userName != null) {
			if(firstName != null)
				db.updatFirstName(firstName, userName);
			
			if(lastName != null)
				db.updatLastName(lastName, userName);
			
			if(pass != null)
				db.updatePassword(pass, userName);
			
		}
	}
}
