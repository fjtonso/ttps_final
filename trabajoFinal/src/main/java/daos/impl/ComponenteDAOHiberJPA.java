package daos.impl;

import hibernate.EMF;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import daos.ComponenteDAO;
import beans.Componente;
import beans.UsuarioSistema;

@Repository
public class ComponenteDAOHiberJPA extends GenericDAOHiberJPA<Componente> implements ComponenteDAO {

	public ComponenteDAOHiberJPA() {
		super(Componente.class);
		}

	//@AuditTrailAnnotation
	@Override
	public void guardar(Componente entidad){
		super.guardar(entidad);
	}
	
	@Override
	public void actualizar(Componente entidad){
		super.actualizar(entidad);
	}	
	@Override
	public void borrar(Componente entidad){
		super.borrar(entidad);
	}
	@Override
	public List<Componente> listar(){
		return super.listar();
	}
	@Override
	public Componente recuperar(Long id){
		return super.recuperar(id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Componente> listarComponente(String tipo) {		
		List<Componente> c = new ArrayList<Componente>(); 
		EntityManager em = EMF.getEMF().createEntityManager();
		Query consulta = em.createQuery("select c from Componente as c where UPPER(c.tipo) = :tipo");
		consulta.setParameter("tipo", tipo);		
		try {
			c = (List<Componente>)consulta.getResultList();
		} catch (javax.persistence.NoResultException e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		return c;
	}
}
