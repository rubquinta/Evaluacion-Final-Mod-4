package cl.awakelab.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.implement.CapacitacionDAO;
import cl.awakelab.model.Capacitacion;

/**
 * Servlet implementation class ControllerForm
 */
@WebServlet("/ControllerForm")
public class ControllerForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int idCapacitacion = Integer.parseInt(request.getParameter("idCapacitacion"));
		int rutCliente = Integer.parseInt(request.getParameter("rutCliente"));
		String diaCapacitacion = request.getParameter("");
		String horaCapacitacion = request.getParameter("horaCapacitacion");
		String lugarCapacitacion = request.getParameter("lugarCapacitacion");
		String duracionCapacitacion = request.getParameter("duracionCapacitacion");
		int cantidadAsistentes = Integer.parseInt(request.getParameter("cantidadAsistentes"));
		
		Capacitacion cap = new Capacitacion(idCapacitacion, rutCliente, diaCapacitacion, horaCapacitacion,
				lugarCapacitacion, duracionCapacitacion, cantidadAsistentes);
		
			
		CapacitacionDAO capa = new CapacitacionDAO();
		capa.registrarCapacitacion(cap);
		
		request.setAttribute("capacitaciones", cap);
		
		getServletContext().getRequestDispatcher("/view/mostrarFormulario.jsp").forward(request, response);
	}

}
