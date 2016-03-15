package daos.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import hibernate.EMF;
import daos.UsuarioSistemaDAO;
import beans.UsuarioSistema;

@Repository
public class UsuarioSistemaDAOHiberJPA extends GenericDAOHiberJPA<UsuarioSistema> implements UsuarioSistemaDAO{
	
	public UsuarioSistemaDAOHiberJPA() {
		super(UsuarioSistema.class);
		}

//	@AuditTrailAnnotation
	@Override
	public void guardar(UsuarioSistema entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(UsuarioSistema entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(UsuarioSistema entidad){
		super.borrar(entidad);
	}	
	@Override
	public UsuarioSistema login(String usuario, String contrasenia) {
		UsuarioSistema user = null;
		EntityManager em = EMF.getEMF().createEntityManager();
		Query consulta = em.createQuery("select u from UsuarioSistema u where u.usuario = :user and u.contrasenia = :pass");
		consulta.setParameter("user", usuario);
		consulta.setParameter("pass", contrasenia);
		try {
			user = (UsuarioSistema)consulta.getSingleResult();
		} catch (javax.persistence.NoResultException e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		return user;
	}
	@Override
	public List<UsuarioSistema> listar(){
		return super.listar();
	}
	@Override
	public String obtenerTipo(String usuario, String contrasenia){
		EntityManager em = EMF.getEMF().createEntityManager();
		Query consulta = em.createQuery("select perfil from UsuarioSistema u where u.usuario = :user and u.contrasenia = :pass");
		consulta.setParameter("user", usuario);
		consulta.setParameter("pass", contrasenia);
		String tipo=(String)consulta.getSingleResult();
		return tipo;
	}
}
