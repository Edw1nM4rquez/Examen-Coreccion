package ec.edu.ups.jpa;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

import ec.edu.ups.dao.PedidoDAO;
import ec.edu.ups.entidades.Pedido;


public class JPAPedidoDAO extends JPAGenericDAO<Pedido, Integer> implements PedidoDAO {
	protected EntityManager em;
	public JPAPedidoDAO() {
		super(Pedido.class);
		this.em = Persistence.createEntityManagerFactory("PedidosJPA").createEntityManager();
		
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Pedido> buscarPorTarjetaComida(String context) {
		List<Pedido> lista = null;
		Query nativeQuery = em.createNativeQuery("SELECT * FROM pedido p WHERE p.TARJETACREDITO_NUMERO = ?;",Pedido.class);
		nativeQuery.setParameter(1, context);
		return (List<Pedido>) nativeQuery.getResultList();
	}


	
}
