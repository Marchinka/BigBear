package servlet;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dummyServices.DummyUserRepository;
import interfaces.UserRepository;
import model.*;
import utils.LoginResources;

@WebServlet(
        name = "BigBearRoomServlet", 
        urlPatterns = {"/big-bear-room/"}
    )
public class BigBearRoomServlet extends HttpServlet {

	
	public BigBearRoomServlet() {
		super();
	}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("/big-bear-room/index.jsp").forward(request, response);
    }
	
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("/big-bear-room/index.jsp").forward(request, response);
    }
}
