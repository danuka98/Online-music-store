package MusicStore;

public class ContactDetails {

	private int contactID;
	private String fname;
	private String lname;
	private String email;
	private String description;
	
	public ContactDetails(int contactID,String fname, String lname, String email, String description) {
		this.contactID = contactID;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.description = description;
	}
	public int getContactID() {
		return contactID;
	}
	public String getFname() {
		return fname;
	}
	public String getLname() {
		return lname;
	}
	public String getEmail() {
		return email;
	}
	public String getDescription() {
		return description;
	}
	
}
