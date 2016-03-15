package beans;

import java.io.File;
import java.util.Set;

//import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@PrimaryKeyJoinColumn(name="idUsuario" , referencedColumnName="idUsuarioSistema")
@Table(name="usuario")
public class Usuario extends UsuarioSistema {
	
	private String facultad;
	private String tipo;
	private String mail;
	private File foto;
	private boolean vegetariano;
	private boolean celiaco;
	private boolean diabetico;
	private boolean hipertenso;
	private boolean intoleranteLactosa;
	private boolean habilitado;
	
	@OneToMany(mappedBy="usuario") //cascade=CascadeType.ALL
	private Set<Compra> compras;
	
	@OneToMany(mappedBy="usuario")
	private Set<Sugerencia> sugerencias;
	
	public String getFacultad() {
		return facultad;
	}
	public void setFacultad(String facultad) {
		this.facultad = facultad;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public File getFoto() {
		return foto;
	}
	public void setFoto(File foto) {
		this.foto = foto;
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
	public void setIntoleranteLactosa(boolean intoleranteLactosa) {
		this.intoleranteLactosa = intoleranteLactosa;
	}
	public boolean isHabilitado() {
		return habilitado;
	}
	public void setHabilitado(boolean habilitado) {
		this.habilitado = habilitado;
	}
	public Set<Compra> getCompras() {
		return compras;
	}
	public void setCompras(Set<Compra> compras) {
		this.compras = compras;
	}
	public Set<Sugerencia> getSugerencias() {
		return sugerencias;
	}
	public void setSugerencias(Set<Sugerencia> sugerencias) {
		this.sugerencias = sugerencias;
	}
	
}