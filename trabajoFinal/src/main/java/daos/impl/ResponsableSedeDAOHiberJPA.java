package daos.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import beans.ResponsableSede;
import daos.ResponsableSedeDAO;

@Repository
public class ResponsableSedeDAOHiberJPA extends GenericDAOHiberJPA<ResponsableSede> implements ResponsableSedeDAO {
	
	public ResponsableSedeDAOHiberJPA() {
		super(ResponsableSede.class);
		}

	//@AuditTrailAnnotation
	@Override
	public void guardar(ResponsableSede entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(ResponsableSede entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(ResponsableSede entidad){
		super.borrar(entidad);
	}
	@Override
	public List<ResponsableSede> listar(){
		return super.listar();
	}
}
