package beans;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="cartilla")
public class Cartilla {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idCartilla")
	private Long id;
	
	private Date fechaDesde;
	private Date fechaHasta;
	private int precio;
	private int cantSemDisponibles;
	
	@OneToMany(mappedBy="cartilla")
	private List<Menu> menues;
	
	public int getCantSemDisponibles() {
		return cantSemDisponibles;
	}
	public void setCantSemDisponibles(int cantSemDisponibles) {
		this.cantSemDisponibles = cantSemDisponibles;
	}
	
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	public Date getFechaDesde() {
		return fechaDesde;
	}
	public void setFechaDesde(Date fechaDesde) {
		this.fechaDesde = fechaDesde;
	}
	public Date getFechaHasta() {
		return fechaHasta;
	}
	public void setFechaHasta(Date fechaHasta) {
		this.fechaHasta = fechaHasta;
	}
	public List<Menu> getMenues() {
		return menues;
	}
	public void setMenues(List<Menu> menues) {
		this.menues = menues;
	}

    
	
}
