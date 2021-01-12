package cl.awakelab.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;

import cl.awakelab.implement.CapacitacionDAO;
import cl.awakelab.model.Capacitacion;

/**
 * Servlet implementation class ControllerListarCapacitaciones
 */
@WebServlet("/ControllerListarCapacitaciones")
public class ControllerListarCapacitaciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerListarCapacitaciones() {
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
						
			CapacitacionDAO cap = new CapacitacionDAO();
			
			List<Capacitacion> listaCapa = cap.listarCapacitacion();
			
			request.setAttribute("capacitaciones", listaCapa);
			
			getServletContext().getRequestDispatcher("/view/listarcapacitaciones.jsp").forward(request, response);
			
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
