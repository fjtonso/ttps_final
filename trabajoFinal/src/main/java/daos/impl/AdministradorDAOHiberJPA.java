package daos.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import beans.Administrador;
import daos.AdministradorDAO;

@Repository
public class AdministradorDAOHiberJPA extends GenericDAOHiberJPA<Administrador> implements AdministradorDAO {
	
	
	public AdministradorDAOHiberJPA() {
		super(Administrador.class);
		}

//	@AuditTrailAnnotation
	@Override
	public void guardar(Administrador entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(Administrador entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(Administrador entidad){
		super.borrar(entidad);
	}	
	@Override
	public List<Administrador> listar(){
		return super.listar();
	}
}
