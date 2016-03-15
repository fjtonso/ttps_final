package beans;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="menu")
public class Menu {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idMenu")
	private Long id;
	
	private String nombre;
	private boolean lunes;
	private boolean martes;
	private boolean miercoles;
	private boolean jueves;
	private boolean viernes;
	
	
	public List<DiaCompra> getDiaCompra() {
		return diaCompra;
	}
	public void setDiaCompra(List<DiaCompra> diaCompra) {
		this.diaCompra = diaCompra;
	}
	public Cartilla getCartilla() {
		return cartilla;
	}
	public void setCartilla(Cartilla cartilla) {
		this.cartilla = cartilla;
	}
	@ManyToMany
	private List <DiaCompra> diaCompra;
	
	@ManyToOne(optional=true)
	@JoinColumn(name="idEntrada")
	private Componente entrada;
	
	@ManyToOne(optional=true)
	@JoinColumn(name="idPlatoPrincipal")
	private Componente platoPrincipal;
	
	@ManyToOne(optional=true)
	@JoinColumn(name="idPostre")
	private Componente postre;
	
	@ManyToOne(optional=true)
	@JoinColumn(name="idBebida")
	private Componente bebida;
	
	@ManyToOne(optional=true)
	@JoinColumn(name="idCartilla")
	private Cartilla cartilla;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	
	public boolean isLunes() {
		return lunes;
	}
	public void setLunes(boolean lunes) {
		this.lunes = lunes;
	}
	public boolean isMartes() {
		return martes;
	}
	public void setMartes(boolean martes) {
		this.martes = martes;
	}
	public boolean isMiercoles() {
		return miercoles;
	}
	public void setMiercoles(boolean miercoles) {
		this.miercoles = miercoles;
	}
	public boolean isJueves() {
		return jueves;
	}
	public void setJueves(boolean jueves) {
		this.jueves = jueves;
	}
	public boolean isViernes() {
		return viernes;
	}
	public void setViernes(boolean viernes) {
		this.viernes = viernes;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Componente getEntrada() {
		return entrada;
	}
	public void setEntrada(Componente entrada) {
		this.entrada = entrada;
	}
	public Componente getPlatoPrincipal() {
		return platoPrincipal;
	}
	public void setPlatoPrincipal(Componente platoPrincipal) {
		this.platoPrincipal = platoPrincipal;
	}
	public Componente getPostre() {
		return postre;
	}
	public void setPostre(Componente postre) {
		this.postre = postre;
	}
	public Componente getBebida() {
		return bebida;
	}
	public void setBebida(Componente bebida) {
		this.bebida = bebida;
	}

}
