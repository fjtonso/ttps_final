package daos.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import beans.Sugerencia;
import daos.SugerenciaDAO;

@Repository
public class SugerenciaDAOHiberJPA extends GenericDAOHiberJPA<Sugerencia> implements SugerenciaDAO {

	public SugerenciaDAOHiberJPA() {
		super(Sugerencia.class);
		}

	//@AuditTrailAnnotation
	@Override
	public void guardar(Sugerencia entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(Sugerencia entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(Sugerencia entidad){
		super.borrar(entidad);
	}
	@Override
	public List<Sugerencia> listar(){
		return super.listar();
	}
}
