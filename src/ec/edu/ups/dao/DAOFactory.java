package ec.edu.ups.dao;

import ec.edu.ups.jpa.JPADAOFactory;

public abstract class DAOFactory {
	 protected static DAOFactory factory = new JPADAOFactory();

	public static DAOFactory getDAOFactory() {
		return factory;
	}

	public abstract void createTables();

	public abstract PedidoDAO getPedidoDAO();

	public abstract ComidaDAO getComidaDAO();
	
	public abstract TarjetaCreditoDAO getTarjetaCreditoDAO();

}
