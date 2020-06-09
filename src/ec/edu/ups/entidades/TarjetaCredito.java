package ec.edu.ups.entidades;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
@Entity
public class TarjetaCredito implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "NUMERO", nullable = false, length = 19)
	private String numero;
	@Column(name = "PROPIETARIO", nullable = false, length = 150)
	private String propietario;
	@Column(name = "FECHACADUCIDAD", nullable = false, length = 5)
	private String fechaCaducidad;
	@Column(name = "CVV", nullable = false, length = 3)
	private String cvv;
	@OneToMany(cascade = CascadeType.ALL, mappedBy="tarjetaCredito")
	private List<Pedido> pedidos;
	
	
	public TarjetaCredito() {
		
	}


	public TarjetaCredito(String numero, String propietario, String fechaCaducidad, String cvv) {
		super();
		this.numero = numero;
		this.propietario = propietario;
		this.fechaCaducidad = fechaCaducidad;
		this.cvv = cvv;
	}


	public String getNumero() {
		return numero;
	}


	public void setNumero(String numero) {
		this.numero = numero;
	}


	public String getPropietario() {
		return propietario;
	}


	public void setPropietario(String propietario) {
		this.propietario = propietario;
	}


	public String getFechaCaducidad() {
		return fechaCaducidad;
	}


	public void setFechaCaducidad(String fechaCaducidad) {
		this.fechaCaducidad = fechaCaducidad;
	}


	public String getCvv() {
		return cvv;
	}


	public void setCvv(String cvv) {
		this.cvv = cvv;
	}


	public List<Pedido> getPedidos() {
		return pedidos;
	}


	public void setPedidos(List<Pedido> pedidos) {
		this.pedidos = pedidos;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cvv == null) ? 0 : cvv.hashCode());
		result = prime * result + ((fechaCaducidad == null) ? 0 : fechaCaducidad.hashCode());
		result = prime * result + ((numero == null) ? 0 : numero.hashCode());
		result = prime * result + ((propietario == null) ? 0 : propietario.hashCode());
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
		TarjetaCredito other = (TarjetaCredito) obj;
		if (cvv == null) {
			if (other.cvv != null)
				return false;
		} else if (!cvv.equals(other.cvv))
			return false;
		if (fechaCaducidad == null) {
			if (other.fechaCaducidad != null)
				return false;
		} else if (!fechaCaducidad.equals(other.fechaCaducidad))
			return false;
		if (numero == null) {
			if (other.numero != null)
				return false;
		} else if (!numero.equals(other.numero))
			return false;
		if (propietario == null) {
			if (other.propietario != null)
				return false;
		} else if (!propietario.equals(other.propietario))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "TarjetaCredito [numero=" + numero + ", propietario=" + propietario + ", fechaCaducidad="
				+ fechaCaducidad + ", cvv=" + cvv + ", pedidos=" + pedidos + "]";
	}


	
	
	

	
	}
