package cl.awakelab.implement;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cl.aawakelab.interfaces.iCapacitacion;
import cl.awakelab.connection.Conexion;
import cl.awakelab.model.Capacitacion;

public class CapacitacionDAO implements iCapacitacion {

	@Override
	public List<Capacitacion> listarCapacitacion() {
		// TODO Auto-generated method stub
		List<Capacitacion> lista = new ArrayList<Capacitacion>();
		
		try {
			
			Connection c = Conexion.getConnection();
			Statement s = c.createStatement();
			String sql = "select idcapacitacion, capfecha, caphora, caplugar, capduracion,"
					+ " clientes_rutcliente, cantasistentes from capacitacion";
			
			ResultSet rs =s.executeQuery(sql);
			
			while (rs.next()) {
				lista.add(new Capacitacion(rs.getInt("idcapacitacion"),
						rs.getInt("clientes_rutcliente"),
						rs.getString("capfecha"), rs.getString("caphora"),
						rs.getString("caplugar"), rs.getString("capduracion"), rs.getInt("cantasistentes")));
			}
			
		} catch(SQLException e) {
			System.out.println("Error en metodo listarCapacit");
		}
		
		return lista;
	}

	@Override
	public void registrarCapacitacion(Capacitacion c) {
		// TODO Auto-generated method stub
		String sql = "insert into capacitacio (idcapacitacion, capfecha,"
				+ " caphora, caplugar, capduracion, clientes_rutcliente, "
				+ "cantasistentes) values (" + c.getIdCapacitacion() + ", " + c.getdiaCapacitacion()
				+ ", " + c.getHoraCapacitacion() + ", " + c.getLugarCapacitacion()
				+ ", " + c.getDuracionCapacitacion() + ", " + c.getRutCliente()
				+ ", " + c.getCantidadAsistentes();
		
		try {
			
			Connection cn = Conexion.getConnection();
			Statement s = cn.createStatement();
			s.execute(sql);
			s.close();
			cn.close();
			
		} catch (SQLException e) {
			System.out.println("Error en metodo registrarCapacitacion");
			e.printStackTrace();
		}
		
		System.out.println(c);
		
		
	}

}
