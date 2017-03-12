package model;

public class UserValidation {

	private boolean isValid;
	private String usernameError;
	private String passwordError;
	
	
	public boolean isValid() {
		return isValid;
	}
	
	public void setValid() {
		this.isValid = true;
	}
	
	public void setInvalid() {
		this.isValid = false;
	}
	
	public String getUsernameError() {
		return usernameError;
	}
	public void setUsernameError(String usernameError) {
		this.usernameError = usernameError;
	}
	public String getPasswordError() {
		return passwordError;
	}
	public void setPasswordError(String passwordError) {
		this.passwordError = passwordError;
	}
	
	
	
	
}
