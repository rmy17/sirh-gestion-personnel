package dev.sgp.filtre;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import dev.sgp.entite.VisiteWeb;

public class FrequentationFilter implements Filter {

	private FilterConfig config = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.config = filterConfig;

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		VisiteWeb visiteWeb = new VisiteWeb();
		long before = System.currentTimeMillis();
		chain.doFilter(request, response);
		long after = System.currentTimeMillis();
		String path = ((HttpServletRequest) request).getRequestURI();
		config.getServletContext().log(path + ":" + (after - before));

	}

	@Override
	public void destroy() {
	}
}
