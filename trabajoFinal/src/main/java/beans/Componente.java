package beans;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="componente")
public class Componente {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idComponente")
	private Long id;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	private String nombre;
	private String tipo;
	private boolean vegetariano;
	private boolean celiaco;
	private boolean diabetico;
	private boolean hipertenso;
	private boolean intoleranteLactosa;
	
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public boolean isVegetariano() {
		return vegetariano;
	}
	public void setVegetariano(boolean vegetariano) {
		this.vegetariano = vegetariano;
	}
	public boolean isCeliaco() {
		return celiaco;
	}
	public void setCeliaco(boolean celiaco) {
		this.celiaco = celiaco;
	}
	public boolean isDiabetico() {
		return diabetico;
	}
	public void setDiabetico(boolean diabetico) {
		this.diabetico = diabetico;
	}
	public boolean isHipertenso() {
		return hipertenso;
	}
	public void setHipertenso(boolean hipertenso) {
		this.hipertenso = hipertenso;
	}
	public boolean isIntoleranteLactosa() {
		return intoleranteLactosa;
	}
	public void setIntoleranteLactosa(boolean intolerante) {
		this.intoleranteLactosa = intolerante;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
}
