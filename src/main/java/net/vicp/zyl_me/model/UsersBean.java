package net.vicp.zyl_me.model;


public class UsersBean {
	private String username;
	private String password;
	private String truename;
	private String email;
	private String phone;
	private String address;
	private String usertype;
	public UsersBean(){
		this.username = "";
		this.password = "";
		this.usertype = "";
		this.truename = "";
		this.email = "";
		this.phone = "";
		this.address = "";
	}
	public UsersBean(String username,String usertype, String password, String truename, String email, String phone, String address) {
		super();
		this.usertype = usertype;
		this.username = username;
		this.password = password;
		this.truename = truename;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}

	public UsersBean(String username, String password, String usertype) {
		this.username = username;
		this.password = password;
		this.usertype = usertype;
		this.truename = "";
		this.email = "";
		this.phone = "";
		this.address = "";
	}



	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getPhone() {
		return phone;
	}

	public String getTruename() {
		return truename;
	}

	public String getUsertype() {
		return usertype;
	}

	public String getUsername() {
		return username;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setTruename(String truename) {
		this.truename = truename;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}
