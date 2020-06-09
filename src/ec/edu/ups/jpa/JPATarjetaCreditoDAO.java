package ec.edu.ups.jpa;

import ec.edu.ups.dao.TarjetaCreditoDAO;
import ec.edu.ups.entidades.TarjetaCredito;

public class JPATarjetaCreditoDAO extends JPAGenericDAO<TarjetaCredito, String> implements TarjetaCreditoDAO{

	public JPATarjetaCreditoDAO() {
		super(TarjetaCredito.class);
	}

}
