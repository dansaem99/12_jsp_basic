package _07_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/servletEx04")
public class ServletEx04 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_servlet/servletEx04.jsp"); // WebContent 하위 경로부터 기술한다.
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession(); // 세션 생성 방법
		
		session.setAttribute("id", request.getParameter("id"));
		session.setAttribute("role", "admin");
		session.setAttribute("isMobile", false);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_servlet/servletEx04Action.jsp");
		dis.forward(request, response);
		
	}

}
