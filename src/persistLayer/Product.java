package persistLayer;
public class Product {
	int id;
	String sku;
	String name;
	String desc;
	int price;
	int quantity;
	String image;
	int rating;
	
	public Product(int id, int sku, String name, String desc, int quantity, String image) {
		this.id = id;
		this.sku = "" + sku;
		this.desc = desc;
		this.name = name;
		this.quantity = quantity;
		this.image = image;
		this.rating = 3;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getimage() {
		return image;
	}

	public void setimage(String image) {
		this.image = image;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}
	
	
}
