package beans;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="compra")
public class Compra {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idCompra")
	private Long id;
	
	private float monto;
	
	@ManyToOne(optional=false)
	@JoinColumn(name="idUsuario")
	private Usuario usuario;
	
	@OneToMany(mappedBy="compra")
	private List<DiaCompra> diaCompra;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public float getMonto() {
		return monto;
	}
	public void setMonto(float monto) {
		this.monto = monto;
	}
	public List<DiaCompra> getDiaCompra() {
		return diaCompra;
	}
	public void setDiaCompra(List<DiaCompra> diaCompra) {
		this.diaCompra = diaCompra;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}
