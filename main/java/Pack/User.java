package Pack;

public class User {
	private int id;
	private String firstname;
	private String lastname;
	private String email;
	private String age;
	private String mobile;
	private String NIC;
	
	public User(int id, String firstname, String lastname, String email, String age, String mobile, String NIC) {
		
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.age = age;
		this.mobile = mobile;
		this.NIC = NIC;
		
	}

	public int getId() {
		return id;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public String getEmail() {
		return email;
	}

	public String getAge() {
		return age;
	}

	public String getMobile() {
		return mobile;
	}

	public String getNIC() {
		return NIC;
	}

	

}