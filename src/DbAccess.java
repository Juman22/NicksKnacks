import java.util.ArrayList;
import java.util.List;
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


//DbAccess class contains methods for retrieving ResultSets
public class DbAccess {
	
	public Connection connect() {
		String username = DbAccessConfiguration.DB_CONNECTION_USERNAME;
		String password = DbAccessConfiguration.DB_CONNECTION_PASSWORD;
		String mysqlURL = DbAccessConfiguration.DB_CONNECTION_URL;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Found Driver");
			} 
		catch (ClassNotFoundException cnfe) 
			{
				System.out.println("Error  loading  driver:  " + cnfe);
			}
		
		try {
			Connection connection = DriverManager.getConnection(mysqlURL, username,password);
			return connection;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}

	public void disconnect(Connection con) {
		// TODO Auto-generated method stub
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ResultSet retrieve(Connection con, String query) {
		try {
			Statement statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
		     System.out.println(e);
			return null;
		}
		
	}

	
	public int create(Connection con, String query) {
		try {
			Statement statement = con.createStatement();
			statement.executeUpdate(query);		
			return 1;
		} catch (SQLException e) {
		     System.out.println(e);
			return 0;
		}
	}

	
	public int update(Connection con, String query) {
		try 
		 {  
			Statement statement = con.createStatement();
			statement.executeUpdate(query);	
			return 1;
		 }
		 catch(Exception e)
		 {
		     System.out.println(e);
		     return 0;
		 }
	}
	
	public List<Product> getListFromResults(ResultSet rs) throws SQLException {
		List<Product> prodList = new ArrayList<Product>();

		while(rs.next()) {
			Product p = new Product(rs.getInt("id"),rs.getInt("sku"), rs.getString("name"), rs.getString("description"),rs.getInt("quantity"), rs.getString("image"));
			prodList.add(p);
		}
		
		return prodList;
	}
	
	public List<Product> getProductsByPriceRange(int min, int max){
		String query = "SELECT * FROM PRODUCTS WHERE PRICE BETWEEN " + min + " AND " + max;
		Connection con = connect();
		
		ResultSet rs = retrieve(con, query);

		try {
			List<Product> prodList = getListFromResults(rs);
			disconnect(con);
			return prodList;
		} catch (SQLException e) {
			System.out.println(e);
			disconnect(con);
			return null;
			
		}
	}
	
	public List<Product> getProductsByName(String name) {
		String query = "SELECT * FROM PRODUCTS WHERE NAME LIKE '%" + name + "%'";
		Connection con = connect();
		
		ResultSet rs = retrieve(con, query);
		
		try {
			List<Product> prodList = getListFromResults(rs);
			disconnect(con);
			return prodList;
		} catch (SQLException e) {
			System.out.println(e);
			disconnect(con);
			return null;
			
		}
	}
	
	public List<Product> getProductsByName(String name, int min, int max){
		String query = "SELECT * FROM PRODUCTS WHERE NAME LIKE '%" + name + "%'";
		query += " PRICE BETWEEN " + min + " AND " + max;
		Connection con = connect();
		
		ResultSet rs = retrieve(con, query);

		try {
			List<Product> prodList = getListFromResults(rs);
			disconnect(con);
			return prodList;
		} catch (SQLException e) {
			System.out.println(e);
			disconnect(con);
			return null;
			
		}
	}
	
	public List<Product> getProductsBySku(String sku){
		String query = "SELECT * FROM PRODUCTS WHERE SKU = " + sku;
		Connection con = connect();
		
		ResultSet rs = retrieve(con, query);

		try {
			List<Product> prodList = getListFromResults(rs);
			disconnect(con);
			return prodList;
		} catch (SQLException e) {
			System.out.println(e);
			disconnect(con);
			return null;
			
		}
	}
	
	public List<Product> getTopProducts() {
		String query = "SELECT * FROM PRODUCTS LIMIT 40";
		Connection con = connect();
		
		ResultSet rs = retrieve(con, query);
		
		try {
			List<Product> prodList = getListFromResults(rs);
			disconnect(con);
			return prodList;
		} catch (SQLException e) {
			System.out.println(e);
			disconnect(con);
			return null;
			
		}
	}
	
	public void reduceProductQuantity(int id, int amt) {
		String query = "UPDATE PRODUCTS SET QUANTITY = QUANTITY - " + amt;
		query += " WHERE ID = " + id + " AND QUANTITY > 0";
		
		Connection con = connect();
		
		update(con, query);
	}
	
	//parses a result set for a new account object
	public Account parseAccount(ResultSet rs) {
		try {
			while(rs.next()) {
				return new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getString("First Name"), rs.getString("Last Name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public Account getAccount(String name, String pass) throws SQLException {
		//Username
		String query = "SELECT * FROM ACCOUNTS WHERE USERNAME = '";
		query += name + "'";
		
		//Password
		query += " AND PASSWORD = '";
		query += pass + "'";
		
		Connection con = connect();
		
		ResultSet rs = retrieve(con, query);
		
		
		Account acct = parseAccount(rs);
		disconnect(con);
		return acct;
	}
	
}
