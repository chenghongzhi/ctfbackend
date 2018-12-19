package ctfbackend.util;

import ctfbackend.bean.Admin;
import ctfbackend.bean.VerifyCode;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;


public class UserContext {

	public static final String LOGIN_IN_SESSION = "username";
	public static final String VERIFYCODE_IN_SESSION = "VERIFYCODE_IN_SESSION";

	private static HttpServletRequest getRequest() {
		return ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
	}
	
	public static void putLogininfo(String username) {
		getRequest().getSession().setAttribute(LOGIN_IN_SESSION, username);
	}

	public static String getCurrent() {
		return (String) getRequest().getSession().getAttribute(
				LOGIN_IN_SESSION);
	}

	public static void putVerifyCode(VerifyCode code) {
		getRequest().getSession().setAttribute(VERIFYCODE_IN_SESSION, code);
	}

	public static VerifyCode getVerifyCode() {
		return (VerifyCode) getRequest().getSession().getAttribute(
				VERIFYCODE_IN_SESSION);
	}
}
