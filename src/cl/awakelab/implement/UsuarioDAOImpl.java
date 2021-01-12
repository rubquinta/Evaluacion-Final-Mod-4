package cl.awakelab.implement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cl.aawakelab.interfaces.IUsuarioDAO;
import cl.awakelab.connection.Conexion;
import cl.awakelab.model.Administrativo;
import cl.awakelab.model.Cliente;
import cl.awakelab.model.Profesional;
import cl.awakelab.model.Usuario;




public class UsuarioDAOImpl implements IUsuarioDAO {

	@Override
	public void createUsuario(Usuario u) {
		try {
			
			String sql = "insert into usuario (usu_nombre, usu_fechaNacimiento, usu_run, usu_tipo ) values ('" + u.getNombre() +
					"', '" + u.getFechaNacimiento() + "', " + u.getRun() + ", '"+ u.getTipoUsuario() + "')";
			
			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();
			
			s.execute(sql);
			
			
			
		}catch (SQLException e) {
			
			System.out.print("ERROR: metodo createUsuario");
			e.printStackTrace();
			
		}

	}
	
	
	@Override
	public void createCliente(Cliente cli) {
		// TODO Auto-generated method stub
		try {
			
			String sql = "insert into usuario (usu_nombre, usu_fechanacimiento, usu_run, usu_tipo)"
					+ " values ('" + cli.getNombre() + "', '" + cli.getFechaNacimiento()
					+ "', " + cli.getRun() + ", '" + cli.getTipoUsuario() + "')";
			
			String sql1 = "insert into cliente (cli_run, cli_nombres, cli_apellidos, cli_telefono, cli_afp, cli_sistemasalud,"
					+ "cli_direccion, cli_comuna, cli_edad, cliente_runusuario)  values ('"+ cli.getRut() + "', '" + cli.getNombres()  + "', '" + cli.getApellidos()  + "', '"
					+ cli.getTelefono()  +"', '" + cli.getAfp() +"', '"+ cli.getSistemaSalud() + "', '" + cli.getDireccion() +  "', '"
					 + cli.getComuna() + "', '" + cli.getEdad() + "', '" + cli.getRun()  +"' )";
			
			
			
			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();
			
			s.execute(sql);
			s.execute(sql1);
			
			
			
			
		} catch(SQLException e) {
			
			System.out.println("Error en el metodo createCliente");
			e.printStackTrace();
		}

	}

	
	@Override
	public void createProfesional(Profesional pro) {
		// TODO Auto-generated method stub
		try {
			
			String sql = "insert into usuario (usu_nombre, usu_fechanacimiento, usu_run, usu_tipo)"
					+ " values ('" + pro.getNombre() + "', '" + pro.getFechaNacimiento()
					+ "', " + pro.getRun() + ", '" + pro.getTipoUsuario() + "')";
			
			String sql1 = "insert into profesional(prof_titulo, prof_fechaIngreso, usu_run) values"
					+ "( '" + pro.getTitulo() + "', '" + pro.getFechaIngreso() + "', '"+ pro.getRun()  + "' )";
			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();
			
			s.execute(sql);
			s.execute(sql1);
			
			
		} catch(SQLException e) {
			System.out.println("Error en el metodo createProfesional");
			e.printStackTrace();
		}
		

	}

	@Override
	public void createAdministrativo(Administrativo adm) {
		// TODO Auto-generated method stub
		try {
			
			String sql = "insert into usuario (usu_nombre, usu_fechanacimiento, usu_run, usu_tipo)"
					+ " values ('" + adm.getNombre() + "', '" + adm.getFechaNacimiento()
					+ "', " + adm.getRun() + ", '" + adm.getTipoUsuario() + "')";
			
			String sql1 = "insert into administrativo ( adm_area, adm_experienciaPrevia, usu_run) values ('"+ adm.getArea() + "', "
					+ " '" + adm.getExperienciaPrevia() + "', '"+ adm.getRun()+ "'   )";
			
			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();
			
			s.execute(sql);
			s.execute(sql1);
			
			
		} catch(SQLException e) {
			System.out.println("Error en el metodo createAdministrativo");
		}

	}

	@Override
	public List<Usuario> readAll() {
		
		List<Usuario> lista = new ArrayList<Usuario>();
		
		try {
			
			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();
			String sql = "select usu_nombre, usu_fechaNacimiento, usu_run, usu_tipo from usuario";
			
			ResultSet rs = s.executeQuery(sql);
			
			while (rs.next()) {
				lista.add(new Usuario(rs.getString("usu_nombre"), rs.getString("usu_fechaNacimiento"),
						rs.getInt("usu_run"), rs.getString("usu_tipo")));
			}
			
			
		} catch (SQLException e) {
			System.out.println("ERROR: metodo readAll()");
			e.printStackTrace();
		}
		
		
		return lista;
	}

	@Override
	public Usuario readOne(int run) {

		Usuario u = null; 
		
		try {
			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();
			String sql = "select usu_nombre, usu_fechaNacimiento, usu_run, usu_tipo from usuario where usu_run =" + run;

			ResultSet rs = s.executeQuery(sql);

			while (rs.next()) {
				u = new Usuario(rs.getString("usu_nombre"), rs.getString("usu_fechaNacimiento"),
						rs.getInt("usu_run"), rs.getString("usu_tipo"));
			}

		} catch (SQLException e) {
			System.out.println("ERROR: metodo readOne()");
			e.printStackTrace();
		}

		return u;
	}
	
	public Cliente readCliente(int run) {
		// TODO Auto-generated method stub
		Cliente cli = null;
		
		try {
			
			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();
			String sql = "select usu_nombre, usu_fechanacimiento, usu_run, usu_tipo from usuario where usu_run = "
					+ run;
			String sql2 = "select cli_rut, cli_nombres, cli_apellidos, cli_telefono, cli_afp, "
					+ "cli_sistemadesalud, cli_direccion, cli_comuna, cli_edad, run_usu from cliente where run_usu =" +  run;
			
			ResultSet rs = s.executeQuery(sql);
			ResultSet rs2 = s.executeQuery(sql2);
			
			while (rs.next()) {
				cli = new Cliente(rs.getString("usu_nombre"), rs.getString("usu_fechanacimiento"),
						rs.getInt("usu_run"), rs.getString("usu_tipo"));
			}
			
			while (rs2.next()) {
				cli.setRut(rs2.getInt("cli_rut"));
				cli.setNombres(rs2.getString("cli_nombres"));
				cli.setApellidos(rs2.getString("cli_apellidos"));	
				cli.setTelefono(rs2.getString("cli_telefono"));
				cli.setAfp(rs2.getString("cli_afp"));
				cli.setSistemaSalud(rs2.getString("cli_sistemadesalud"));
				cli.setDireccion(rs2.getString("cli_direccion"));
				cli.setComuna(rs2.getString("cli_comuna"));
				cli.setEdad(rs2.getInt("cli_edad"));
			}
			
		} catch(SQLException e) {
			System.out.println("Error en el metodo readCliente");
		}
		
		return cli;
		
	}
	
	public Profesional readProfesional(int run) {
		
		Profesional pro = null;
		
	try {
				
				Connection c = Conexion.getConnection();
				Statement s = c.createStatement();
				String sql = "select usu_nombre, usu_fechanacimiento, usu_run, usu_tipo from usuario where usu_run = "
						+ run;
				String sql2 = "select pro_titulo, pro_fechaIngreso, run_usu from profesional where run_usu =" +  run;
				
				ResultSet rs = s.executeQuery(sql);
				ResultSet rs2 = s.executeQuery(sql2);
				
				while (rs.next()) {
					pro = new Profesional(rs.getString("usu_nombre"), rs.getString("usu_fechanacimiento"),
							rs.getInt("usu_run"), rs.getString("usu_tipo"));
				}
				
				while (rs2.next()) {
					pro.setTitulo(rs2.getString("pro_titulo"));
					pro.setFechaIngreso(rs2.getString("prof_fechaIngreso"));
					
				}
			
		} catch(SQLException e) {
			System.out.println("Error en el metodo readProfesional");
		}
		
		return pro;
		
	}
	
	public Administrativo readAdministrativo(int run) {
		
		Administrativo adm = null;
		
	try {
				
				Connection c = Conexion.getConnection();
				Statement s = c.createStatement();
				String sql = "select usu_nombre, usu_fechanacimiento, usu_run, usu_tipo from usuario where usu_run = "
						+ run;
				String sql2 = "select adm_area, adm_experienciaPrevia, run_usu from administrativo where run_usu =" +  run;
				
				ResultSet rs = s.executeQuery(sql);
				ResultSet rs2 = s.executeQuery(sql2);
				
				while (rs.next()) {
					adm = new Administrativo(rs.getString("usu_nombre"), rs.getString("usu_fechanacimiento"),
							rs.getInt("usu_run"), rs.getString("usu_tipo"));
				}
				
				while (rs2.next()) {
					adm.setArea(rs2.getString("adm_area"));
					adm.setExperienciaPrevia(rs2.getString("adm_experienciaPrevia"));
					
				}
			
		} catch(SQLException e) {
			System.out.println("Error en el metodo readAdministrativo");
		}
		
		return adm;
		
	}
	
	

	@Override
	public void updateUsuario(Usuario usr) {
		try {

			String sql = "update usuario set usu_nombre = '" + usr.getNombre() + "', usu_fechaNacimiento = '" + usr.getFechaNacimiento() + 
					"', usu_run = '"  + usr.getRun() + "' , usu_tipo ='" + usr.getTipoUsuario() +   "' where usu_run = " + usr.getRun();

			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();

			s.execute(sql);

		} catch (SQLException e) {
			System.out.println("ERROR: metodo createUsuario");
			e.printStackTrace();
		}

	}
	
	
	@Override
	public void updateCliente(Cliente cli) {
		try {

			String sql = "update usuario set (usu_nombre = '" + cli.getNombre() + "', usu_fechaNacimiento = '" + cli.getFechaNacimiento() +  "'"
					+ " where usu_run = '" + cli.getRun()+ "' )"; 
					
					
			String sql2 = "update cliente set cli_rut = " + cli.getRut() + "', cli_nombres = '" +  cli.getNombres() + "', cli_apellidos = "
					+  " "+ cli.getApellidos() +"', cli_telefono = '" + cli.getTelefono()  + "', cli_afp = '" + cli.getAfp()  + "', cli_sistemasal "
							+ " '" + cli.getSistemaSalud()  +"', cli_direccion ='" +  cli.getDireccion() + "', cli_comuna = " + cli.getComuna() + "', "
									+ "cli_edad =  '" + cli.getEdad()  +"' where usu_run = " + cli.getRun();

			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();

			s.execute(sql);
			s.execute(sql2);

		} catch (SQLException e) {
			System.out.println("ERROR: metodo createUsuario");
			e.printStackTrace();
		}

	}
	
	
	@Override
	public void updateProfesional(Profesional pro) {
		try {

			String sql = "update profesional set prof_titulo = '" + pro.getTitulo() + "', prof_fechaIngreso = '" + pro.getFechaIngreso() + 
					"', usu_run = '"  + pro.getRun() + "' where usu_run = " + pro.getRun();

			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();

			s.execute(sql);

		} catch (SQLException e) {
			System.out.println("ERROR: metodo createUsuario");
			e.printStackTrace();
		}

	}
	
	
	@Override
	public void updateAdministrativo(Administrativo adm) {
		try {

			String sql = "update palabras set usu_nombre = '" + adm.getNombre() + "', usu_fechaNacimiento = '" + adm.getFechaNacimiento() + 
					"', usu_run = '"  + adm.getRun() + "' where usu_run = " + adm.getRun();

			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();

			s.execute(sql);

		} catch (SQLException e) {
			System.out.println("ERROR: metodo createUsuario");
			e.printStackTrace();
		}

	}

	@Override
	public void deleteUsuario(Usuario u) {
		try {

			String sql = "delete usuario where usu_run = " + u;

			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();

			s.execute(sql);

		} catch (SQLException e) {
			System.out.println("ERROR: metodo deletePalabra(int)");
			e.printStackTrace();
		}

	}
	
	@Override
	public void deleteCliente(Cliente cli) {
		try {

			String sql = "delete from usuario where usu_run = '" + cli.getRun()+ "' )"; 
					
					
			String sql2 = "delete from clinte where usu_run = " + cli.getRun();

			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();

			s.execute(sql);
			s.execute(sql2);

		} catch (SQLException e) {
			System.out.println("ERROR: metodo deleteUsuario");
			e.printStackTrace();
		}

	}
	
	
	
	

	@Override
	public void deleteUsuario(int id) {
		

	}

	@Override
	public List<Usuario> searchUsuario(String busqueda) {
		// TODO Auto-generated method stub
		return null;
	}

}
