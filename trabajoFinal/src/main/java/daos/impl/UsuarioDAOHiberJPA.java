package daos.impl;


import java.util.List;

import org.springframework.stereotype.Repository;

import daos.UsuarioDAO;
import beans.Usuario;

@Repository
public class UsuarioDAOHiberJPA extends GenericDAOHiberJPA<Usuario> implements UsuarioDAO {

	public UsuarioDAOHiberJPA() {
		super(Usuario.class);
		}

//	@AuditTrailAnnotation
	@Override
	public void guardar(Usuario entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(Usuario entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(Usuario entidad){
		super.borrar(entidad);
	}	
	@Override
	public List<Usuario> listar(){
		return super.listar();
	}
}
