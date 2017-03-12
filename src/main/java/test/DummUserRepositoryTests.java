package test;

import static org.junit.Assert.*;

import org.junit.Test;

import dummyServices.*;
import model.*;

public class DummUserRepositoryTests {

	@Test
	public void isUserValid_userWithEmptyUsername_ReturnsNegativeValidation() {
		// SETUP
		DummyUserRepository userRepository = new DummyUserRepository();
		BigBearUser user = new BigBearUser();
		user.setUsername("");
		
		// EXERCISE
		UserValidation userValidation = userRepository.isUserValid(user);
		
		// ASSERT
		assertEquals(userValidation.isValid(), false);
		assertEquals(userValidation.getUsernameError(), "Invalid username");
	}

	@Test
	public void isUserValid_userWithNullUsername_ReturnsNegativeValidation() {
		// SETUP
		DummyUserRepository userRepository = new DummyUserRepository();
		BigBearUser user = new BigBearUser();
		user.setUsername(null);
		
		// EXERCISE
		UserValidation userValidation = userRepository.isUserValid(user);
		
		// ASSERT
		assertEquals(userValidation.isValid(), false);
		assertEquals(userValidation.getUsernameError(), "Invalid username");
	}
	
	@Test
	public void isUserValid_userWithEmptyPassword_ReturnsNegativeValidation() {
		// SETUP
		DummyUserRepository userRepository = new DummyUserRepository();
		BigBearUser user = new BigBearUser();
		user.setUsername("mation");
		user.setPassword("");
		
		// EXERCISE
		UserValidation userValidation = userRepository.isUserValid(user);
		
		// ASSERT
		assertEquals(userValidation.isValid(), false);
		assertEquals(userValidation.getPasswordError(), "Invalid password");
	}

	@Test
	public void isUserValid_userWithNullPassword_ReturnsNegativeValidation() {
		// SETUP
		DummyUserRepository userRepository = new DummyUserRepository();
		BigBearUser user = new BigBearUser();
		user.setUsername("mation");
		user.setPassword(null);
		
		// EXERCISE
		UserValidation userValidation = userRepository.isUserValid(user);
		
		// ASSERT
		assertEquals(userValidation.isValid(), false);
		assertEquals(userValidation.getPasswordError(), "Invalid password");
	}
	
	@Test
	public void isUserValid_userWithWrongPassword_ReturnsNegativeValidation() {
		// SETUP
		DummyUserRepository userRepository = new DummyUserRepository();
		BigBearUser user = new BigBearUser();
		user.setUsername("mation");
		user.setPassword("sbagliato");
		
		// EXERCISE
		UserValidation userValidation = userRepository.isUserValid(user);
		
		// ASSERT
		assertEquals(userValidation.isValid(), false);
		assertEquals(userValidation.getPasswordError(), "Wrong password");
	}
	
	
	
	@Test
	public void isUserValid_validUser_ReturnsPositiveValidation() {
		// SETUP
		DummyUserRepository userRepository = new DummyUserRepository();
		BigBearUser user = new BigBearUser();
		user.setUsername("mation");
		user.setPassword("pizza");
		
		// EXERCISE
		UserValidation userValidation = userRepository.isUserValid(user);
		
		// ASSERT
		assertEquals(userValidation.isValid(), true);
	}
	
	
	
	
}
