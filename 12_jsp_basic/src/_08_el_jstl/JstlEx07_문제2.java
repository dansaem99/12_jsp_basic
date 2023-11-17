package _08_el_jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jstlEx07_문제2")
public class JstlEx07_문제2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("com", "바위");
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_el_jstl/jstlEx07_문제2.jsp");
		dis.forward(request, response);
	}
}
