package com.sds.icto.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class WebUtil {
	public static void forward(
	 String path,
	 HttpServletRequest request,
	 HttpServletResponse response )
		throws ServletException, IOException {
		RequestDispatcher requestDispatcher = 
				request.getRequestDispatcher( path );
		requestDispatcher.forward(request, response);
	}
	
	public static boolean isAuth( String sessionObjectName,  HttpServletRequest request ) {
		HttpSession session = request.getSession( false );
		return 
		session != null && 
		session.getAttribute( sessionObjectName ) != null ; 
	}
}
