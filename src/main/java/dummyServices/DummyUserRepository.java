package dummyServices;

import interfaces.UserRepository;
import model.*;

public class DummyUserRepository implements UserRepository {

	public UserValidation isUserValid(BigBearUser user) {
		UserValidation validation = new UserValidation();
		
		String username = user.getUsername();
		String password = user.getPassword();
			
		if(username == null || (username != null && username.equals(""))){
			validation.setInvalid();
			validation.setUsernameError("Invalid username");
			return validation;
		}
		
		if(password == null || (password != null && password.equals(""))){
			validation.setInvalid();
			validation.setPasswordError("Invalid password");
			return validation;
		} else if(!password.equals("pizza")) {
			validation.setInvalid();
			validation.setPasswordError("Wrong password");
			return validation;
		}
		
		validation.setValid();
		
		return validation;
	}

	
	
	
}
