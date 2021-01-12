package cl.aawakelab.interfaces;

import java.util.List;

import cl.awakelab.model.Administrativo;
import cl.awakelab.model.Cliente;
import cl.awakelab.model.Profesional;
import cl.awakelab.model.Usuario;

public interface IUsuarioDAO {
	
	public void createUsuario(Usuario u);
	public void createCliente(Cliente cli);
	public void createAdministrativo(Administrativo adm);
	public void createProfesional(Profesional pro);
	
	
	public List<Usuario> readAll();
	public Usuario readOne(int id);
	
	public void updateUsuario(Usuario u);
	public void updateCliente(Cliente c);
	public void updateAdministrativo(Administrativo a);
	public void updateProfesional(Profesional p);
	
	
	public void deleteUsuario(Usuario u);	
	public void deleteUsuario(int id);
	void deleteCliente(Cliente cli);
	
	public List<Usuario> searchUsuario(String busqueda);
	
	
	
	
	
	
	
	

}
