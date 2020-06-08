package ec.edu.ups.entidades;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity 
public class Pedido implements Serializable{

	private static final long serialVersionUID=1L;
	//numero,fecha,cliente,total,observaciones
@Id
private int numero;
private String fecha;
private String numCliente;
private double total;
private String observacion;
@OneToOne
@JoinColumn
private Tarjeta tarjeta;

@OneToMany
private List<Comida> comidas = new ArrayList<Comida>();


	
}
