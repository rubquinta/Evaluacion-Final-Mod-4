package cl.awakelab.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cl.awakelab.implement.UsuarioDAOImpl;
import cl.awakelab.model.Usuario;

/**
 * Servlet implementation class ControllerListadoUsuarios
 */
@WebServlet("/ControllerListadoUsuarios")
public class ControllerListadoUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerListadoUsuarios() {
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
		
			UsuarioDAOImpl usuDAO = new UsuarioDAOImpl();
			List<Usuario> lista = usuDAO.readAll();
			
			request.setAttribute("usuarios", lista);
				
			getServletContext().getRequestDispatcher("/view/listadousuarios.jsp").forward(request, response);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
