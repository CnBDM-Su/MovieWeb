package domain;

public class Userdomain implements java.io.Serializable {
	
	private String Uid;
	private String Username;
	private String Password;
	
	public String getUid() {
		return Uid;
	}
	public String getUsername() {
		return Username;
	}
	public String getPassword() {
		return Password;
	}
	public void setUid(String Uid) {
		this.Uid = Uid;
	}
	public void setUsername(String Username) {
		this.Username = Username;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
}

