package MusicStore;

public class userAccount {

	private int accountID;
	private String name;
	private String email;
	private String phoneNo;
	private int age;
	private String userName;
	private String password;
	
	public userAccount(int accountID, String name, String email, String phoneNo, int age, String userName,String password) {
		this.accountID = accountID;
		this.name = name;
		this.email = email;
		this.phoneNo = phoneNo;
		this.age = age;
		this.userName = userName;
		this.password = password;
	}

	public int getAccountID() {
		return accountID;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public int getAge() {
		return age;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
	
}
