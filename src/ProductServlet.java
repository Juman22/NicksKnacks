
import java.io.IOException;  
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Configuration cfg = null;
	
	private String templateDir = "/Knick Knacks/templates";
    
	/**
     * Default constructor. 
     */
    public ProductServlet() {
       
    }

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
    
    void displayResults(HttpServletRequest request, HttpServletResponse response, List<Product> rs) {	
    	if(rs != null) {
			Template template = null;
			DefaultObjectWrapperBuilder df = new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_25);
			SimpleHash root = new SimpleHash(df.build());
			
			root.put("products", rs);
			
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
    
	protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//The actual name of these variables may change, not sure yet
		//Need actual html page to get accurate names
		String name = request.getParameter("name");
		String minPrice = request.getParameter("minPrice");
		String maxPrice = request.getParameter("maxPrice");
		DbInterface db = new DbInterface();
		
		//Parse string params to ints for DbInterface
		int min = -1, max = -1;
		if(minPrice != null)
			min = Integer.parseInt(minPrice);
		if(maxPrice != null)
			max = Integer.parseInt(maxPrice);
		
		List<Product> rs;
		if(name == "" && min == -1) {
			rs = db.getProducts();
		}
		else {
			rs = db.getSearchResults(name, min, max);
		}
		
		displayResults(request, response, rs);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
