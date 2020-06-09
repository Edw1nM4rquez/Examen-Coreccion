package ec.edu.ups.jpa;

import ec.edu.ups.dao.ComidaDAO;
import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.PedidoDAO;
import ec.edu.ups.dao.TarjetaCreditoDAO;



public class JPADAOFactory extends DAOFactory {

	@Override
	public void createTables() {
		this.getComidaDAO().createTable();
		this.getTarjetaCreditoDAO();
		this.getPedidoDAO().createTable();
		
		
	}

	@Override
	public PedidoDAO getPedidoDAO() {
		
		return new JPAPedidoDAO();
	}

	@Override
	public ComidaDAO getComidaDAO() {
		
		return new JPAComidaDAO();
	}

	@Override
	public TarjetaCreditoDAO getTarjetaCreditoDAO() {
		
		return new JPATarjetaCreditoDAO();
	}


}
