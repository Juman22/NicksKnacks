package queryLayer;

public class Profile {
	
	String username, firstname, lastname, address, phone, city, state, email;
	int zipcode;
	
	public Profile(String username, String firstname, String lastname, String address, String city, String state, int zipcode, String phone, String email){
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.address = address;
		this.phone = phone;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.email = email;
	}
	
	public String getUsername(){
		return this.username;
	}
	
	public String getFirstname(){
		return this.firstname;
	}
	
	public String getLastname(){
		return this.lastname;
	}
	
	public String getAddress(){
		return this.address;
	}
	
	public String getPhone(){
		return this.phone;
	}
	
	public String getCity(){
		return this.city;
	}
	
	public String getState(){
		return this.state;
	}
	
	public int getZipcode(){
		return this.zipcode;
	}
	
	public String getEmail(){
		return this.email;
	}
	
	

}
