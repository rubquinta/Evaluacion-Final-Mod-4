package cl.aawakelab.interfaces;

import java.util.List;

import cl.awakelab.model.Capacitacion;

public interface iCapacitacion {
	
	public List<Capacitacion> listarCapacitacion();
	public void registrarCapacitacion(Capacitacion c);

}
