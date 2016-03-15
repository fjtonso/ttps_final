package daos.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import daos.CartillaDAO;
import beans.Cartilla;
@Repository
public class CartillaDAOHiberJPA extends GenericDAOHiberJPA<Cartilla> implements CartillaDAO {

	public CartillaDAOHiberJPA() {
		super(Cartilla.class);
		}

	//@AuditTrailAnnotation
	@Override
	public void guardar(Cartilla entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(Cartilla entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(Cartilla entidad){
		super.borrar(entidad);
	}
	@Override
	public List<Cartilla> listar(){
		return super.listar();
	}
}
