package servlet;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.google.gson.Gson;

import model.*;
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
		ArrayList<MessageModel> messages = (ArrayList<MessageModel>) request.getServletContext().getAttribute("messages");
    	
    	if(messages == null){
    		messages = new ArrayList<MessageModel>();
    		request.getServletContext().setAttribute("messages", messages);
    	}
    	
    	Gson gson = new Gson();
    	String responseJson = gson.toJson(messages);
    	response.setContentType("application/json");
    	PrintWriter printWriter = response.getWriter();
    	printWriter.print(responseJson);
    	printWriter.flush();    	
	}
	
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
    	Gson gson = new Gson();
    	String messageJson = request.getReader().lines().collect(Collectors.joining());
    	System.out.println(messageJson);

    	MessageModel messageModel = gson.fromJson(messageJson, MessageModel.class);
    	String username = request.getSession().getAttribute("username").toString();
    	messageModel.setUsername(username);
    	
    	ArrayList<MessageModel> messages = (ArrayList<MessageModel>) request.getServletContext().getAttribute("messages");
    	
    	if(messages == null){
    		messages = new ArrayList<MessageModel>();
    		request.getServletContext().setAttribute("messages", messages);
    	}
    	
    	messages.add(messageModel);
    	System.out.println(messages.size());
    	
    	String responseJson = gson.toJson(messageModel);
    	response.setContentType("application/json");
    	PrintWriter printWriter = response.getWriter();
    	printWriter.print(responseJson);
    	printWriter.flush();
    }
    
}
