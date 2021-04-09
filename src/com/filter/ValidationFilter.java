package com.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ValidationFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("filter called");
		String name = request.getParameter("txtName");
		if(name == null) {
			request.setAttribute("error","error in name");
			request.getRequestDispatcher("Demo.jsp").forward(request, response);
		}
		else {
			chain.doFilter(request, response);
		}
		
	}
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
