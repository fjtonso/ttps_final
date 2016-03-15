package daos.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import beans.Compra;
import daos.CompraDAO;

@Repository
public class CompraDAOHiberJPA extends GenericDAOHiberJPA<Compra> implements CompraDAO{

	public CompraDAOHiberJPA() {
		super(Compra.class);
		}

	//@AuditTrailAnnotation
	@Override
	public void guardar(Compra entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(Compra entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(Compra entidad){
		super.borrar(entidad);
	}
	@Override
	public List<Compra> listar(){
		return super.listar();
	}
}
