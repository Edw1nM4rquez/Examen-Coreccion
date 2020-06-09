package ec.edu.ups.entidades;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity 
public class Pedido implements Serializable{


	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int numero;
	@Temporal(TemporalType.DATE)
	private Date fecha;
	@Column(name = "CLIENTE", nullable = false, length = 100)
	private String cliente;
	@Column(name = "OBSERVACIONES", nullable = false, length = 250)
	private String observaciones;
	@Column(name = "TOTAL", nullable = false, scale = 2)
	private double total;
	@ManyToOne
	@JoinColumn
	private TarjetaCredito tarjetaCredito;
	@OneToMany( mappedBy="pedido",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Comida> comidas;


	public Pedido() {
		
	}
	
	


	public Pedido(int numero, Date fecha, String cliente, String observaciones, double total,
			TarjetaCredito tarjetaCredito) {
		this.numero = numero;
		this.fecha = fecha;
		this.cliente = cliente;
		this.observaciones = observaciones;
		this.total = total;
		this.tarjetaCredito = tarjetaCredito;
	}




	public int getNumero() {
		return numero;
	}


	public void setNumero(int numero) {
		this.numero = numero;
	}


	public Date getFecha() {
		return fecha;
	}


	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}


	public String getCliente() {
		return cliente;
	}


	public void setCliente(String cliente) {
		this.cliente = cliente;
	}


	public String getObservaciones() {
		return observaciones;
	}


	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}


	public double getTotal() {
		return total;
	}


	public void setTotal(double total) {
		this.total = total;
	}


	public TarjetaCredito getTarjetaCredito() {
		return tarjetaCredito;
	}


	public void setTarjetaCredito(TarjetaCredito tarjetaCredito) {
		this.tarjetaCredito = tarjetaCredito;
	}


	public List<Comida> getComidas() {
		return comidas;
	}


	public void setComidas(List<Comida> comidas) {
		this.comidas = comidas;
	}




	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cliente == null) ? 0 : cliente.hashCode());
		result = prime * result + ((fecha == null) ? 0 : fecha.hashCode());
		result = prime * result + numero;
		result = prime * result + ((observaciones == null) ? 0 : observaciones.hashCode());
		result = prime * result + ((tarjetaCredito == null) ? 0 : tarjetaCredito.hashCode());
		long temp;
		temp = Double.doubleToLongBits(total);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}




	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pedido other = (Pedido) obj;
		if (cliente == null) {
			if (other.cliente != null)
				return false;
		} else if (!cliente.equals(other.cliente))
			return false;
		if (fecha == null) {
			if (other.fecha != null)
				return false;
		} else if (!fecha.equals(other.fecha))
			return false;
		if (numero != other.numero)
			return false;
		if (observaciones == null) {
			if (other.observaciones != null)
				return false;
		} else if (!observaciones.equals(other.observaciones))
			return false;
		if (tarjetaCredito == null) {
			if (other.tarjetaCredito != null)
				return false;
		} else if (!tarjetaCredito.equals(other.tarjetaCredito))
			return false;
		if (Double.doubleToLongBits(total) != Double.doubleToLongBits(other.total))
			return false;
		return true;
	}




	@Override
	public String toString() {
		return "Pedido [numero=" + numero + ", fecha=" + fecha + ", cliente=" + cliente + ", observaciones="
				+ observaciones + ", total=" + total + ", tarjetaCredito=" + tarjetaCredito + ", comidas=" + comidas
				+ "]";
	}
	
	
	
}
