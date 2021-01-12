package cl.awakelab.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ControllerLogin
 */
@WebServlet("/ControllerLogin")
public class ControllerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerLogin() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		getServletContext().getRequestDispatcher("/view/login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String d_usr = "admin";
		String d_pdw = "1234";
		
		if (d_usr.equals(request.getParameter("rut")) &&  d_pdw.equals(request.getParameter("password"))) {
			
			System.out.println("Usuario autenticado... creando sesion");
			
			//creamos la sesion 
			HttpSession sesion = request.getSession(true);
			
			//agregamos un atributo a la sesion, q se llama usr.
			sesion.setAttribute("rut", request.getParameter("rut"));
			
			getServletContext().getRequestDispatcher("/ControllerContacto").forward(request, response);
			
		} else {
			
			System.out.println("RUT no existe: usr:" +  request.getParameter("usr") + " pwd: " + request.getParameter("pwd"));
			getServletContext().getRequestDispatcher("/view/login.jsp").forward(request, response);
		}
	}

}
