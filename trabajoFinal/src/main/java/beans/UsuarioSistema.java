package beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Inheritance (strategy= InheritanceType.JOINED)
@Table(name="usuarioSistema")
public class UsuarioSistema {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idUsuarioSistema")
	private Long id;
	
	private String usuario;
	private String contrasenia;
	private String nombre;
	private String apellido;
	private String perfil;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPerfil() {
		return perfil;
	}

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

	public String getUsuario() {
		return usuario;
	}

    public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

    public String getContrasenia() {
		return contrasenia;
	}

    public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

    public String getNombre()  {
		return nombre;
	}

    public void setNombre(String nombre) {
		this.nombre = nombre;
	}

    public String getApellido() {
		return apellido;
	}

    public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Usuario" + this.usuario;
	}
	
}
