package model;

public class UserInformation {
	private String username;
	private boolean isAuthenticated;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		username = username;
	}

	public boolean isAuthenticated() {
		return isAuthenticated;
	}

	public void setAuthenticated(boolean isAuthenticated) {
		this.isAuthenticated = isAuthenticated;
	}
}
