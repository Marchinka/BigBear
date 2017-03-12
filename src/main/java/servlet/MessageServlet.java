package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.*;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import utils.LoginResources;

@WebServlet(
        name = "MessageServlet", 
        urlPatterns = {"/Messages"}
    )
public class MessageServlet extends HttpServlet {

	public MessageServlet(){
		super();
	}
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request, response);
	}
	
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
    	
    	String message = request.getReader().lines().collect(Collectors.joining());
    	
    	ArrayList<String> messages = (ArrayList<String>) request.getServletContext().getAttribute("messages");
    	
    	if(messages == null){
    		messages = new ArrayList<String>();
    		request.getServletContext().setAttribute("messages", messages);
    	}
    	
    	message = request.getAttribute("username") +": "+ message;
    	messages.add(message);
    	System.out.print(messages.size());
    	
    }
    
}
