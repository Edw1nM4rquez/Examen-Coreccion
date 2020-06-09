package ec.edu.ups.entidades;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Comida implements Serializable {

private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo;
	@Column(name = "NOMBRE", nullable = false, length = 100)
	private String nombre;
	@Column(name = "PRECIOUNITARIO", nullable = false, scale = 2)
	private double precioUnitario;
	@ManyToOne
	@JoinColumn
	private Pedido pedido;
	
	public Comida() {
		
	}

	public Comida(int codigo, String nombre, double precioUnitario, Pedido pedido) {
		this.codigo = codigo;
		this.nombre = nombre;
		this.precioUnitario = precioUnitario;
		this.pedido = pedido;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getPrecioUnitario() {
		return precioUnitario;
	}

	public void setPrecioUnitario(double precioUnitario) {
		this.precioUnitario = precioUnitario;
	}

	public Pedido getPedido() {
		return pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + codigo;
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
		result = prime * result + ((pedido == null) ? 0 : pedido.hashCode());
		long temp;
		temp = Double.doubleToLongBits(precioUnitario);
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
		Comida other = (Comida) obj;
		if (codigo != other.codigo)
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		if (pedido == null) {
			if (other.pedido != null)
				return false;
		} else if (!pedido.equals(other.pedido))
			return false;
		if (Double.doubleToLongBits(precioUnitario) != Double.doubleToLongBits(other.precioUnitario))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Comida [codigo=" + codigo + ", nombre=" + nombre + ", precioUnitario=" + precioUnitario + ", pedido="
				+ pedido + "]";
	}
	
}
