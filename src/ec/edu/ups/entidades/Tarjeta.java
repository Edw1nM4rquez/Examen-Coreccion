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
	
	public Tarjeta() {
		
	}


	
	//Es solo para la tarjeta de credito 
	
	public Tarjeta(int numeroTarjeta, String nombre, String fecha_caducidad, int cvv) {
		super();
		this.numeroTarjeta = numeroTarjeta;
		this.nombre = nombre;
		this.fecha_caducidad = fecha_caducidad;
		this.cvv = cvv;
	}	
	//Es para la tarjeta de credito con el pedido 



	public Tarjeta(int numeroTarjeta, String nombre, String fecha_caducidad, int cvv, Pedido pedido) {
		super();
		this.numeroTarjeta = numeroTarjeta;
		this.nombre = nombre;
		this.fecha_caducidad = fecha_caducidad;
		this.cvv = cvv;
		this.pedido = pedido;
	}



	public int getNumeroTarjeta() {
		return numeroTarjeta;
	}



	public void setNumeroTarjeta(int numeroTarjeta) {
		this.numeroTarjeta = numeroTarjeta;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getFecha_caducidad() {
		return fecha_caducidad;
	}



	public void setFecha_caducidad(String fecha_caducidad) {
		this.fecha_caducidad = fecha_caducidad;
	}



	public int getCvv() {
		return cvv;
	}



	public void setCvv(int cvv) {
		this.cvv = cvv;
	}



	public Pedido getPedido() {
		return pedido;
	}



	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}



	@Override
	public String toString() {
		return "Tarjeta [numeroTarjeta=" + numeroTarjeta + ", nombre=" + nombre + ", fecha_caducidad=" + fecha_caducidad
				+ ", cvv=" + cvv + ", pedido=" + pedido + "]";
	}
	
	
	
	
	
}
