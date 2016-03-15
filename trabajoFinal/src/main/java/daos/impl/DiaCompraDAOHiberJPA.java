package daos.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import beans.DiaCompra;
import daos.DiaCompraDAO;

@Repository
public class DiaCompraDAOHiberJPA extends GenericDAOHiberJPA<DiaCompra> implements DiaCompraDAO{

	public DiaCompraDAOHiberJPA() {
		super(DiaCompra.class);
		}

	//@AuditTrailAnnotation
	@Override
	public void guardar(DiaCompra entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(DiaCompra entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(DiaCompra entidad){
		super.borrar(entidad);
	}
	@Override
	public List<DiaCompra> listar(){
		return super.listar();
	}
}
