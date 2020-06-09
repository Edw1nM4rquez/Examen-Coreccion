package ec.edu.ups.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import ec.edu.ups.dao.GenericDAO;

public class JPAGenericDAO<T, ID> implements GenericDAO<T,ID> {
	
	private Class<T> persistentClass;
	protected EntityManager em;

	public JPAGenericDAO(Class<T> persistentClass) {
		this.persistentClass = persistentClass;
		this.em = Persistence.createEntityManagerFactory("PedidosJPA").createEntityManager();
	}

	@Override
	public void createTable() {
	
	}

	@Override
	public boolean create(T entity) {
		em.getTransaction().begin();
		try {
			em.persist(entity);
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println("INGRESANDO: /n");
			System.out.println(">>>> ERROR:JPAGenericDAO:create " + e);
			if (em.getTransaction().isActive())
				em.getTransaction().rollback();
			return false;
		}		
	}

	@Override
	public T read(ID id) {
		return em.find(persistentClass, id);
	}

	@Override
	public boolean update(T entity) {
		em.getTransaction().begin();
		try {
			em.merge(entity);
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println(">>>> ERROR:JPAGenericDAO:update " + e);
			if (em.getTransaction().isActive())
				em.getTransaction().rollback();
			return false;
		}
	}

	@Override
	public boolean delete(T entity) {
		System.out.println("ELIMINANDO...");
		em.getTransaction().begin();
		try {
			em.remove(entity);
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println(">>>> ERROR:JPAGenericDAO:delete " + e);
			if (em.getTransaction().isActive())
				em.getTransaction().rollback();
			return false;
		}
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<T> findAll() {
		em.getTransaction().begin();
		List<T> lista = null;
		try {
			javax.persistence.criteria.CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			cq.select(cq.from(persistentClass));
			lista = em.createQuery(cq).getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}

}
