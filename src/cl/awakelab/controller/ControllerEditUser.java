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
import cl.awakelab.model.Cliente;
import cl.awakelab.model.Usuario;
import cl.awakelab.model.Profesional;
import cl.awakelab.model.Administrativo;

/**
 * Servlet implementation class ControllerEditUser
 */
@WebServlet("/ControllerEditUser")
public class ControllerEditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerEditUser() {
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
			
			if (request.getParameter("tipo").equals("Cliente")) {
			
				int run = Integer.parseInt(request.getParameter("run"));
				UsuarioDAOImpl userDAO = new UsuarioDAOImpl();
				Cliente cli = userDAO.readCliente(run);
				
				request.setAttribute("cliente", cli);
				
				getServletContext().getRequestDispatcher("/view/editarcliente.jsp").forward(request, response);
			} 
			
			else {
				
				if (request.getParameter("tipo").equals("Profesional")) {
					
					int run = Integer.parseInt(request.getParameter("run"));
					UsuarioDAOImpl userDAO = new UsuarioDAOImpl();
					Profesional pro = userDAO.readProfesional(run);
					
					request.setAttribute("Profesional", pro);
					
					getServletContext().getRequestDispatcher("/view/editarprofesional.jsp").forward(request, response);
				
					
					
				}
				else {
					
					
					if (request.getParameter("tipo").equals("Administrativo")){
						
						int run = Integer.parseInt(request.getParameter("run"));
						
						UsuarioDAOImpl userDAO = new UsuarioDAOImpl();
						
						Administrativo adm = userDAO.readAdministrativo(run);
						
						request.setAttribute("Administrativo", adm);
						
						getServletContext().getRequestDispatcher("/view/editaradministrativo.jsp").forward(request, response);
						
					}
				}
			}

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		if (request.getParameter("tipo").equals("Cliente")) {
			Cliente cli = new Cliente(request.getParameter("nombre"), request.getParameter("fechaNacimiento"),
					Integer.parseInt(request.getParameter("run")), request.getParameter("tipo"));	
			
			cli.setRut(Integer.parseInt(request.getParameter("rutCliente")));
			cli.setNombres(request.getParameter("nombresCliente"));
			cli.setApellidos(request.getParameter("apellidosCliente"));
			cli.setTelefono(request.getParameter("telefonoCliente"));
			cli.setAfp(request.getParameter("afp"));
			cli.setSistemaSalud("sistemadesalud");
			cli.setDireccion(request.getParameter("direccion"));
			cli.setComuna(request.getParameter("comuna"));
			cli.setEdad(Integer.parseInt(request.getParameter("edad")));
			
			
			UsuarioDAOImpl uDao = new UsuarioDAOImpl();
			uDao.updateCliente(cli);
			System.out.println("Usuario Creado");
			
			getServletContext().getRequestDispatcher("/ControllerListadoUsuarios").forward(request, response);
		}
		
		if (request.getParameter("tipo").equals("Administrativo")) {
			Administrativo adm = new Administrativo(request.getParameter("nombre"), request.getParameter("fechaNacimiento"),
					Integer.parseInt(request.getParameter("run")), request.getParameter("tipo"));
			
			adm.setExperienciaPrevia(request.getParameter("expPrevia"));
			adm.setArea(request.getParameter("area"));
			
			UsuarioDAOImpl update = new UsuarioDAOImpl();
			System.out.println("Usuario Creado");
			
			getServletContext().getRequestDispatcher("/ControllerListadoUsuarios").forward(request, response);
		}
		
		if (request.getParameter("tipo").equals("Profesional")) {
			
			Profesional pro = new Profesional(request.getParameter("nombre"), request.getParameter("fechaNacimiento"),
					Integer.parseInt(request.getParameter("run")), request.getParameter("tipo"));
			
			pro.setFechaIngreso(request.getParameter("titulo"));
			pro.setTitulo(request.getParameter("fechaIng"));
			
			
			UsuarioDAOImpl uDao = new UsuarioDAOImpl();
			uDao.updateProfesional(pro);
			System.out.println("Usuario Creado");
			
			getServletContext().getRequestDispatcher("/ControllerListadoUsuarios").forward(request, response);
		}
			
			
		
		
	}

}