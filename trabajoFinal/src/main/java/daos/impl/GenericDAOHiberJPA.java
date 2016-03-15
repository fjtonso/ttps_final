package daos.impl;

import hibernate.EMF;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import daos.GenericDAO;


@Transactional
public class GenericDAOHiberJPA<T> implements GenericDAO<T>{
	
	private EntityManager entityManager;
	
	@PersistenceContext
	public void setEntityManager(EntityManager em){
	this.entityManager = em;
	}
	public EntityManager getEntityManager() {
	return entityManager;
	}
	
	private Class<T> clase;

	
	public GenericDAOHiberJPA(Class<T> clase) {
		this.clase = clase;
	}

	public Class<T> getClase() {
		return clase;
	}

	public void setClase(Class<T> clase) {
		this.clase = clase;
	}
	
	public List<T> listar(){
		EntityManager em = EMF.getEMF().createEntityManager();
		Query query = em.createQuery("select a from "+this.getClase().getSimpleName()+" a"); 
		return (List<T>)query.getResultList();
		//		EntityManager em = EMF.getEMF().createEntityManager(); //esto no deberia ir ahora, spring hace esto ver!!!
//		EntityTransaction tx = null;
//		Set<T> resultado = null;
//
//		try {
//			tx = em.getTransaction();
//			tx.begin();
//			Query consulta = em.createQuery("select * from entidad");
//			resultado = (Set<T>)consulta.getResultList();
//			tx.commit();
//		}
//		catch (RuntimeException e) {
//			if ( tx != null && tx.isActive() ) tx.rollback();
//			e.printStackTrace();
//			throw e;
//		}
//		 finally {
//		    em.close();
//		}
//		 return resultado;
//	
	
	}
	
	public T recuperar(Long id){

		T entidad = null;
		EntityManager em = EMF.getEMF().createEntityManager();
		Query consulta = em.createQuery("select e from "+this.getClase().getSimpleName()+" e where e.id = :id");
		consulta.setParameter("id", id);
		try {
			entidad = (T)consulta.getSingleResult();
		} catch (javax.persistence.NoResultException e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		return entidad;
		
//		return (T) this.getEntityManager().find(
//			this.getClase(), id); //Usuario.class?
		
		//		T entidad = null;
//		EntityManager em = EMF.getEMF().createEntityManager();
//		Query consulta = em.createQuery("select e from "+this.getClase().getSimpleName()+" e where e.id = :id");
//		consulta.setParameter("id", id);
//		try {
//			entidad = (T)consulta.getSingleResult();
//		} catch (javax.persistence.NoResultException e) {
//			e.printStackTrace();
//		} finally {
//			em.close();
//		}
//		return entidad;
	}
	
	@Override
	public void guardar(T entidad){
		EntityManager em = EMF.getEMF().createEntityManager();
		EntityTransaction tx = null;
		tx = em.getTransaction();
		tx.begin();
		em.persist(entidad);
		tx.commit();
		//		EntityManager em = EMF.getEMF().createEntityManager();
//		EntityTransaction tx = null;
//		
//		try {
//			tx = em.getTransaction();
//			tx.begin();
//			em.persist(entidad);
//			tx.commit();
//		}
//		catch (RuntimeException e) {
//			if ( tx != null && tx.isActive() ) tx.rollback();
//			e.printStackTrace();
//			throw e;
//		}
//		 finally {
//		    em.close();
//		}
//		 return entidad;
	}
	
	public void actualizar(T entidad){

		
		EntityManager em = EMF.getEMF().createEntityManager();
		EntityTransaction tx = null;
		
		try {
			tx = em.getTransaction();
			tx.begin();
			em.merge(entidad);
			tx.commit();
		}
		catch (RuntimeException e) {
			if ( tx != null && tx.isActive() ) tx.rollback();
			e.printStackTrace();
			throw e;
		}
		 finally {
		    em.close();
		}
		//this.getEntityManager().merge(entidad);
		
		
		//		EntityManager em = EMF.getEMF().createEntityManager();
//		EntityTransaction tx = null;
//		
//		try {
//			tx = em.getTransaction();
//			tx.begin();
//			em.merge(entidad);
//			tx.commit();
//		}
//		catch (RuntimeException e) {
//			if ( tx != null && tx.isActive() ) tx.rollback();
//			e.printStackTrace();
//			throw e;
//		}
//		 finally {
//		    em.close();
//		}
	}
	
	@Override
	public void borrar(T entidad) {

		EntityManager em = EMF.getEMF().createEntityManager(); 
		EntityTransaction tx = null;
		
		try {
			tx = em.getTransaction();
			tx.begin();
			em.remove(em.contains(entidad) ? entidad : em.merge(entidad));
			//em.remove(entidad);
			tx.commit();
		}
		catch (RuntimeException e) {
			if ( tx != null && tx.isActive() ) tx.rollback();
				e.printStackTrace();
				throw e;
			}
		 finally {
		    em.close();
		 }
		
		//this.getEntityManager().remove(this.getEntityManager().find(this.getClase(), id)); //Usuario.class?
		
		//		EntityTransaction tx = null;
//		EntityManager em = EMF.getEMF().createEntityManager();
//		try {
//			tx = em.getTransaction();
//		
//			tx.begin();
//			em.remove(em.contains(entidad) ? entidad : em.merge(entidad));
//			tx.commit();
//		}
//		catch (RuntimeException e) {
//			if ( tx != null && tx.isActive() ) tx.rollback();
//				e.printStackTrace();
//				throw e;
//			}
//		 finally {
//			 em.close();
//		 }
	}

}
