package beans;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="diaCompra")
public class DiaCompra {
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="idDiaCompra")
	private Long id;
	
	private Date fecha;
	private String formaRetiro;
	
	@ManyToMany @JoinTable(name="compradia_menu",
			 joinColumns=@JoinColumn(name="idCompraDelDia",
			 referencedColumnName="idDiaCompra"),
			 inverseJoinColumns=@JoinColumn(name="idDelMenu",
			 referencedColumnName="idMenu"))
	private List<Menu> menues;

	@ManyToOne(optional=true)
	@JoinColumn(name="idSede")
	private Sede sede;
	
	@ManyToOne(optional = true)
	@JoinColumn(name="idCompra")
	private Compra compra;
	

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getFormaRetiro() {
		return formaRetiro;
	}
	public void setFormaRetiro(String formaRetiro) {
		this.formaRetiro = formaRetiro;
	}
	
	public void setMenues(List<Menu> menues) {
		this.menues = menues;
	}
	
	public List<Menu> getMenues() {
		return menues;
	}
	
	public Sede getSede() {
		return sede;
	}
	public void setSede(Sede sede) {
		this.sede = sede;
	}
	
	public Compra getCompra() {
		return compra;
	}
	public void setCompra(Compra compra) {
		this.compra = compra;
	}
}
