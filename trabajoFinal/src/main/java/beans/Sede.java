package beans;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="sede")
public class Sede {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idSede")
	private Long id;
	
	private String nombre;
	private String direccion;
	private String email;
	
	@OneToMany(mappedBy="sede")      //una sede puede tener muchas sugerencias.
	private List<Sugerencia> sugerencias;
	 
	@OneToMany(mappedBy="sede")		//una sede puede tener muchas compras para ese día en particular.
	private List<DiaCompra> diaCompras;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
}
