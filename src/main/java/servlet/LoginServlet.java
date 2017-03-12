package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dummyServices.DummyUserRepository;
import interfaces.UserRepository;
import model.*;
import utils.LoginResources;

@WebServlet(
        name = "LoginServlet", 
        urlPatterns = {"/Login"}
    )
public class LoginServlet extends HttpServlet {

	private UserRepository userRepository;
	
	public LoginServlet() {
		super();
		this.userRepository = new DummyUserRepository();
	}
	
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	
    	BigBearUser user =  new BigBearUser();
    	user.setPassword(password);
    	user.setUsername(username);
    	
    	UserValidation validation = this.userRepository.isUserValid(user);
    	
    	if (validation.isValid()) {
    		request.getRequestDispatcher("/big-bear-room/index.jsp").forward(request, response);
    	} else {
    		request.setAttribute("usernameError", validation.getUsernameError());	
    		request.setAttribute("passwordError", validation.getPasswordError());
    		request.getRequestDispatcher("index.jsp").forward(request, response);
    	}
    }
    
}
