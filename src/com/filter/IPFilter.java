package com.filter;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class IPFIlter
 */
public class IPFilter implements Filter {
	
    private FilterConfig config;
    public final static String IP_RANGE =  "192.168";
    int count = 0;
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String ip = request.getRemoteAddr();
		HttpServletResponse httpRes = null;
		if(response instanceof HttpServletResponse) {
			httpRes = (HttpServletResponse) response;
		}
		StringTokenizer toke = new StringTokenizer(ip,".");//Break up the IP address into chunks representing each byte    
		int dots = 0;
		String byte1="";
		String byte2="";
		String client="";
		while(toke.hasMoreTokens()) {
		++dots;
		 //This token is the first number series or byte 
		if(dots==1){
			byte1 = toke.nextToken();
			
		}
		else {
			byte2 = toke.nextToken();
			break;
			}
		}
		client = byte1+"."+byte2;
		if(IP_RANGE.equals(client)) {
			httpRes.sendError(HttpServletResponse.SC_GATEWAY_TIMEOUT,"That means goodbye forever!");
		}
		else {                          //Client is okay; send them on their merry way                    
			count++;
			System.out.println(count);
			chain.doFilter(request, response);
		} 
		
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		this.config = fConfig;
		
	}

}
