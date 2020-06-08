package ec.edu.ups.entidades;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Comida implements Serializable {

	private static final long serialValueUID = 1L;
	// codigo, nombre, precioUnitario
	@Id
	private int codigo;
	private String nombre;
	private double precioUnitario;
	
	@ManyToOne
	@JoinColumn
	private Pedido pedido;
	
	
}
