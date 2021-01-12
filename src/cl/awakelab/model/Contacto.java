package cl.awakelab.model;

public class Contacto {
	protected String nombre;
	protected String email;
	protected String telefono;
	protected String mensaje;
	
	public Contacto() {
		
	}
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public Contacto(String nombre, String email, String telefono, String mensaje) {
		super();
		this.nombre = nombre;
		this.email = email;
		this.telefono = telefono;
		this.mensaje = mensaje;
	}
	
	public void mostrarMensaje(String nombre, String email, String telefono, String mensaje)
	{
		System.out.println(nombre);
		System.out.println(email);
		System.out.println(telefono);
		System.out.println(mensaje);
	}
	

}
