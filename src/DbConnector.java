
import java.io.IOException;   
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import persistLayer.Account;
import persistLayer.DbInterface;
import persistLayer.Product;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapperBuilder;
import freemarker.template.SimpleHash;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;

/**
 * Servlet implementation class DbConnector
 */
@WebServlet("/DbConnector")
public class DbConnector extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Configuration cfg = null;
	
	private String templateDir = "/Knick Knacks/templates";
    
	//Default constructor
    public DbConnector() {
       
    }

    //Generic init function
    public void init() {
    	// Create your Configuration instance, and specify if up to what FreeMarker
    	// version (here 2.3.25) do you want to apply the fixes that are not 100%
    	// backward-compatible. See the Configuration JavaDoc for details.
    	cfg = new Configuration(Configuration.VERSION_2_3_25);
    	
    	// Specify the source where the template files come from.
		cfg.setServletContextForTemplateLoading(getServletContext(), templateDir);
		
		// Sets how errors will appear.
		// During web page *development* TemplateExceptionHandler.HTML_DEBUG_HANDLER is better.
		cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
		
		// Don't log exceptions inside FreeMarker that it will thrown at you anyway:
		cfg.setLogTemplateExceptions(false);
    }
    
    //Opens product page and displays the search results
    void displayResults(HttpServletRequest request, HttpServletResponse response, List<Product> rs) {	
    	if(rs != null) {
			Template template = null;
			DefaultObjectWrapperBuilder df = new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_25);
			SimpleHash root = new SimpleHash(df.build());
			
			root.put("products", rs);
			
			root = addActiveAccount(request, root);
			
			try {
				String templateName = "test-shop.ftl";
				template = cfg.getTemplate(templateName);
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				template.process(root, out);
				
			} catch (IOException e) {
				e.printStackTrace();
				
			} catch (TemplateException e) {
				e.printStackTrace();
				
			}
    	}
    }
    
    //Adds the active account to a hash for freemarker
    SimpleHash addActiveAccount(HttpServletRequest request, SimpleHash root) {
    	HttpSession session = request.getSession();
		Account activeAcct = (Account) session.getAttribute("activeAccount");
		
		if(activeAcct != null)
			root.put("account", activeAcct); 
		
		return root;
    }
    
    void displayProduct(HttpServletRequest request, HttpServletResponse response, Product p) {
		Template template = null;
		DefaultObjectWrapperBuilder df = new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_25);
		SimpleHash root = new SimpleHash(df.build());
		
		root.put("product", p);
		
		root = addActiveAccount(request, root);
		
		try {
			String templateName = "test-product.ftl";
			template = cfg.getTemplate(templateName);
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			template.process(root, out);
			
		} catch (IOException e) {
			e.printStackTrace();
			
		} catch (TemplateException e) {
			e.printStackTrace();
			
		}
    }
    
    //Opens profile page
    void displayAccount(HttpServletRequest request, HttpServletResponse response, Account acct) {
		Template template = null;
		DefaultObjectWrapperBuilder df = new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_25);
		SimpleHash root = new SimpleHash(df.build());
		
		root.put("account", acct);
		
		root = addActiveAccount(request, root);

		try {
			String templateName = "test-profile.ftl";
			template = cfg.getTemplate(templateName);
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			template.process(root, out);
			
		} catch (IOException e) {
			e.printStackTrace();
			
		} catch (TemplateException e) {
			e.printStackTrace();
			
		}
    	
    }
    
  //Opens profile page
    void displayError(HttpServletRequest request, HttpServletResponse response) {
		Template template = null;
		DefaultObjectWrapperBuilder df = new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_25);
		SimpleHash root = new SimpleHash(df.build());
		
		try {
			String templateName = "error.ftl";
			template = cfg.getTemplate(templateName);
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			template.process(root, out);
			
		} catch (IOException e) {
			e.printStackTrace();
			
		} catch (TemplateException e) {
			e.printStackTrace();
			
		}
    	
    }
    
    //Sets the session account variable
    void setSessionAccount(HttpServletRequest request, Account acct) {
    	HttpSession session = request.getSession();
    	session.setAttribute("activeAccount", acct);	
    }
    
    //Used for all services except for account related functions
	protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String minPrice = request.getParameter("pricemin");
		String maxPrice = request.getParameter("pricemax");
		String sku = request.getParameter("sku");
		DbInterface db = new DbInterface();

		//If the servlet is provided a sku, it bypasses the search to display the product
		//Otherwise it populates the ftl with a product list
		if(sku != null && sku != "") {
			Product p = db.getProductBySku(sku);
			if(p != null)
				displayProduct(request, response, p);
		} else {
			//Parse string params to ints for DbInterface
			int min = -1, max = -1;
			if(minPrice != null && minPrice != "")
				min = Integer.parseInt(minPrice);
			if(maxPrice != null && maxPrice != "")
				max = Integer.parseInt(maxPrice);
			List<Product> rs;

			if((name == null || name == "") && min == -1) {
				rs = db.getProducts();
			}
			else {
				rs = db.getSearchResults(name, min, max);
			}
			
			displayResults(request, response, rs);
		}
	}
	
	//Used for account related functions
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Used for account retrieval
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String newPassword = request.getParameter("newpassword");
		
		//Used for account creation
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String confirm = request.getParameter("confirm");

		DbInterface db = new DbInterface();

		Account acct = db.getAccount(userName, password);

		//Checks if acct exists in the database
		if(acct != null) {		
			//If updating password
			if(newPassword != null) {
				acct.setFirstName(firstName);
				acct.setLastName(lastName);
				acct.setPassword(newPassword);
				
				db.updateAccount(userName, newPassword, firstName, lastName);
			}
			//If logging in
			if(userName != "" && password != null) {
				if(acct.getPassword().equals(password)) {
					System.out.println("test");
					HttpSession session = request.getSession();
					Account activeAcct = (Account) session.getAttribute("activeAccount");
					if(activeAcct == null)
						setSessionAccount(request, acct);
					
					displayAccount(request, response, acct);
				}
			}
			
		} else {
			//If making account
			if(firstName != null && newPassword == null) {
				db.createAccount(userName, password, firstName, lastName);	
				acct = db.getAccount(userName, password);
				
				HttpSession session = request.getSession();
				Account activeAcct = (Account) session.getAttribute("activeAccount");
				if(activeAcct == null)
					setSessionAccount(request, acct);
				
				displayAccount(request, response, acct);
			} else {
				//Load error page
				displayError(request, response);
			}
		}
	}
}