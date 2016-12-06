package mainPackage;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;
import queryLayer.*;

/**
 * Servlet implementation class cartServlet
 */
@WebServlet("/cartServlet")
public class cartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	queryLogic queryLayerMain = new queryLogic();
    Configuration cfg = null;
    
    private String templateDir = "/WEB-INF/templates";
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Cart cart;
		
		String name = request.getParameter("productName");
		int price = Integer.parseInt(request.getParameter("price"));
//		int quantity = Integer.parseInt(request.getParameter("quantity"));
        String skuNum = request.getParameter("skuNum");
        int sku = Integer.parseInt(skuNum.replaceAll(",", ""));
        
		String description = request.getParameter("description");
		Product prod = new Product(name, price, sku, description, " ");
		
    	HttpSession session = request.getSession();    	
    	cart = (Cart) session.getAttribute("activeCart");	
    	
    	if(cart != null){
	    	cart.addToCart(prod);
	    	setSessionCart(request, cart);
    	}else{
    		cart = new Cart();
	    	cart.addToCart(prod);
	    	setSessionCart(request, cart);
    	}
    	
    	Map<String, Object> newRoot;
    	
    	newRoot = cart.getCart();
    	    	
    	queryLayerMain.displayResults(request, response, newRoot, cfg);
    	
    	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
    void setSessionCart(HttpServletRequest request, Cart cart) {
    	HttpSession session = request.getSession();    	
    	session.setAttribute("activeCart", cart);	
    	
    }
    
    void addToCart(HttpServletRequest request, Cart cart) {
    	HttpSession session = request.getSession();    	
    	session.setAttribute("activeCart", cart);	
    	
    }

}
