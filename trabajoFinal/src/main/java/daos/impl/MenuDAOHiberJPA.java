package daos.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import daos.MenuDAO;
import beans.Menu;

@Repository
public class MenuDAOHiberJPA extends GenericDAOHiberJPA<Menu> implements MenuDAO {

	public MenuDAOHiberJPA() {
		super(Menu.class);
		}

	//@AuditTrailAnnotation
	@Override
	public void guardar(Menu entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(Menu entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(Menu entidad){
		super.borrar(entidad);
	}
	@Override
	public List<Menu> listar(){
		return super.listar();
	}
	@Override
	public Menu recuperar(Long id){
		return super.recuperar(id);
	}
}
