package daos.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import daos.SedeDAO;
import beans.Sede;

@Repository
public class SedeDAOHiberJPA extends GenericDAOHiberJPA<Sede> implements SedeDAO{

	public SedeDAOHiberJPA() {
		super(Sede.class);
		}

	//@AuditTrailAnnotation
	@Override
	public void guardar(Sede entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(Sede entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(Sede entidad){
		super.borrar(entidad);
	}
	@Override
	public List<Sede> listar(){
		return super.listar();
	}
}
