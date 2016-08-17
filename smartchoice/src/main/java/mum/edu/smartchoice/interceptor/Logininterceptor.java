package mum.edu.smartchoice.interceptor;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Logininterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Principal principal = request.getUserPrincipal();
		if (principal != null) {
			HttpSession session = request.getSession();
			session.setAttribute("customer", principal.getName());

		}

		return true;

	}

}
