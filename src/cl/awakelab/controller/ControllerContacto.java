package cl.awakelab.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cl.awakelab.model.Contacto;

/**
 * Servlet implementation class ControllerContacto
 */
@WebServlet("/ControllerContacto")
public class ControllerContacto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerContacto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesion = request.getSession();
		Object usuario = (String) sesion.getAttribute("rut");
		
		if (usuario == null) {
			
			getServletContext().getRequestDispatcher("/ControllerLogin").forward(request, response);
			
		}
				
		else {
			
			getServletContext().getRequestDispatcher("/view/contacto.jsp").forward(request, response);
			
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nombre = request.getParameter("nombre");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String mensaje = request.getParameter("mensaje");
		
		Contacto cont = new Contacto();
		
		cont.mostrarMensaje(nombre, email, telefono, mensaje);
		
		getServletContext().getRequestDispatcher("/ControllerIndex").forward(request, response);
		
		
	}

}
