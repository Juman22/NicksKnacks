

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;
import persistLayer.DbInterface;
import persistLayer.Product;
import queryLayer.Cart;
import queryLayer.queryLogic;

/**
 * Servlet implementation class QuantityServlet
 */
@WebServlet("/QuantityServlet")
public class QuantityServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
	
    Configuration cfg = null;
    
    private String templateDir = "/Knick Knacks/templates";
	queryLogic queryLayerMain = new queryLogic();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuantityServlet() {
        super();
        // TODO Auto-generated constructor stub
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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sku = request.getParameter("sku");
		DbInterface db = new DbInterface();
		Product prod = db.getProductBySku(sku);
		int quantity = prod.getQuantity();
		
		HttpSession session = request.getSession();    	
    	Cart cart = (Cart) session.getAttribute("products");	
    	
    	if(cart != null){
	    	cart.addToCart(prod,quantity);
	    	setSessionCart(request, cart);
    	}else{
    		cart = new Cart();
	    	cart.addToCart(prod,quantity);
	    	setSessionCart(request, cart);
    	}
    	
    	cartServlet serv = new cartServlet();
    	serv.doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	 void setSessionCart(HttpServletRequest request, Cart cart) {
	    	HttpSession session = request.getSession();    	
	    	session.setAttribute("products", cart);	
	    	
	    }
	    
	    void addToCart(HttpServletRequest request, Cart cart) {
	    	HttpSession session = request.getSession();    	
	    	session.setAttribute("products", cart);	
	    	
	    }

}
