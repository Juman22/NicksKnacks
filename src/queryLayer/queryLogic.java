package queryLayer;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistLayer.DbInterface;
import persistLayer.Product;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapperBuilder;
import freemarker.template.SimpleHash;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class queryLogic {
	

    Connection con;
	DbAccess queryImplementor = new DbAccess();
    public queryLogic(){
        con = queryImplementor.connect();
    }
    
    public void getAllProducts(Map<String, Object> newHashMap)
    {
        String query = " ";
        query = "SELECT * from store.products";
        
        ArrayList<Product> main = new ArrayList<Product>();

        ResultSet result = queryImplementor.retrieve(con, query);
        
        try {
			while(result.next()){
				String name = result.getString("name");
				int price = result.getInt("price");
				int id = result.getInt("sku");
				String description = result.getString("description");
				String image = result.getString("image"); 
				
				Product newProduct = new Product(id, name, description,5, image,price);
				main.add(newProduct);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        newHashMap.put("products", main);
        
    }
    
    public void getAccountInfo(Map<String, Object> newHashMap, String username)
    {
        String query = " ";
        query = "SELECT * from store.profile where username = '" + username + "'";
        
        ArrayList<Profile> main5 = new ArrayList<Profile>();

        ResultSet result = queryImplementor.retrieve(con, query);
        
        try {
			while(result.next()){
				String userName = result.getString("username");
				String firstName = result.getString("firstname");
				String lastName = result.getString("lastname");
				String address = result.getString("Address");
				String phone = result.getString("phone");
				String city = result.getString("city");
				String state = result.getString("state");
				int zipcode = result.getInt("zipcode");
				String email = result.getString("email");
				
				Profile newProfile = new Profile(userName, firstName, lastName, address, city, state, zipcode, phone, email);
				main5.add(newProfile);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        newHashMap.put("profiles", main5);
        
    }
    
    public void getProductDetails(Map<String, Object> newHashMap, int sku)
    {
        String query = " ";
        query = "SELECT * from store.products where sku = '" + sku +"';" ;
        
        ArrayList<Product> mainTwo = new ArrayList<Product>();

        ResultSet result = queryImplementor.retrieve(con, query);
        
        try {
			while(result.next()){
				String name = result.getString("name");
				int price = result.getInt("price");
				int id = result.getInt("sku");
				String description = result.getString("description");
				String image = result.getString("image");
				
				Product newProduct = new Product(id, name, description,5, image,price);
				mainTwo.add(newProduct);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        newHashMap.put("products", mainTwo);
        
    }
    
    public int getAccountValidation(String username, String password){
    	 String query = "SELECT * from store.accounts";
   
         ResultSet result = queryImplementor.retrieve(con, query);
         
         int resultID = 0;
         
         int loopCount = 4;
         
         try {
 			while(result.next() && loopCount == 4){
 				String userName = result.getString("username"); 
 				String passWord = result.getString("password");
 				
 				if(username == userName){
 					if(password == passWord){
 						resultID = 1;
 						loopCount = 3; 
 					}
 					else resultID = 2;
 				}
 				
 			}
 		} catch (SQLException e1) {
 			// TODO Auto-generated catch block
 			e1.printStackTrace();
 		}
		return resultID;
    }
    
    public void getAccount(Map<String, Object> newHashMap, String username)
    {
        String query = " ";
        String input = " ";       
       
        query = "SELECT * from store.accounts where username = '" + username + "'";
        
        ResultSet result = queryImplementor.retrieve(con, query);
        
        try {
            ResultSetMetaData resultOfMetaData = result.getMetaData();
            int columnCount = resultOfMetaData.getColumnCount();
            ArrayList<String> namesOfColumns = new ArrayList<String>();
            for (int i = 1; i <= columnCount; i++) {
                namesOfColumns.add(resultOfMetaData.getColumnName(i));
            }
            newHashMap.put("colNames", namesOfColumns);
            ArrayList<Row> rowList = new ArrayList<Row>();
            while (result.next()) {
                Row newRow = new Row();
                for (int j = 1; j <= columnCount; j++) {
                    input = result.getString(j);
                    if (input == null){
                        input = "null";
                    }
                    newRow.add(input);
                }
                rowList.add(newRow);
            }
            newHashMap.put("products", rowList);
        } catch (SQLException e) {
            System.err.println(e);
        }
    }
    
    public class Row {
        private ArrayList<String> data;         
        public Row(){
            data = new ArrayList<String>();
        }
        public void add(String s){ 
            data.add(s); 
        }
        public ArrayList<String> getData(){ 
            return data; 
        }
    }
    
	public void deployProducts(HttpServletResponse response, Map<String, Object> root, Configuration cfg) {
		
	    response.setContentType("text/html");
	    try {
	        PrintWriter out = response.getWriter();
	        Template temp = null;

	        temp = cfg.getTemplate("shop.ftl");

	        temp.process(root, out);
	
	    }catch (TemplateException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	   
	}
  }
	
	public void deployProductDetails(HttpServletResponse response, Map<String, Object> root2, Configuration cfg) {
		
	    response.setContentType("text/html");
	    try {
	        PrintWriter out2 = response.getWriter();
	        Template temp2 = null;

	        temp2 = cfg.getTemplate("product.ftl");

	        temp2.process(root2, out2);
	
	    }catch (TemplateException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	   
	}
  }
	
	public void deployProfile(HttpServletResponse response, Map<String, Object> root2, Configuration cfg) {
		
	    response.setContentType("text/html");
	    try {
	        PrintWriter out2 = response.getWriter();
	        Template temp2 = null;

	        temp2 = cfg.getTemplate("profile.ftl");

	        temp2.process(root2, out2);
	
	    }catch (TemplateException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	   
	}
  }
	
    public void displayResults(HttpServletResponse response, Map<String, Object> root4, Configuration cfg) {	
	    response.setContentType("text/html");
	    try {
	        PrintWriter out4 = response.getWriter();
	        Template temp4 = null;

	        temp4 = cfg.getTemplate("cart.ftl");

	        temp4.process(root4, out4);
	
	    }catch (TemplateException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	   
	}
    }
	
    public void addAccount(String username,  String password, String firstName, String lastName) throws SQLException
    {       
        
        DbInterface db = new DbInterface();
        db.createAccount(username, password, firstName, lastName);
    }

}
