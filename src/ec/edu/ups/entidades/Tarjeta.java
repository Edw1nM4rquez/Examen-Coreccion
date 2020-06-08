package ec.edu.ups.entidades;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
@Entity
public class Tarjeta implements Serializable{

	private static final long serialVersionUID =1L;
	// numero_tarjeta, nombre , fecha_caducidad, cvv
	@Id
	private  int numeroTarjeta;
	private String nombre; 
	private String fecha_caducidad;
	private int cvv;
	@OneToOne(cascade = CascadeType.ALL, mappedBy ="tarjeta")
	private Pedido pedido;
	
	
	
	
}
