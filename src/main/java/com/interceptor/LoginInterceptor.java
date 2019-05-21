package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("++++++++++++++++++++++++++++afterCompletion");
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		System.out.println("++++++++++++++++++++++++++++postHandle");
		
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resq, Object arg2) throws Exception {
		return false;
		// TODO Auto-generated method stub
//	String path=req.getRequestURI();
//	System.out.println("---------------------"+path);
//	//HttpSession session=req.getSession();
//	//Denglu denglu=(Denglu) session.getAttribute("Zhanghao");
//	//null!=denglu
//	if(!path.contains("/denglu")){
//		String zhanghao=(String) req.getSession().getAttribute("zhanghao");
//		if(null==zhanghao){
//			//resq.sendRedirect(req.getContextPath() + "/pagedenglu");
//			return true;
//		}
//		resq.sendRedirect(req.getContextPath() + "/pagedenglu");
//		return false;
//	}	
 }

}
