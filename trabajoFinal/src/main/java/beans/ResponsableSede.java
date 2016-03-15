package beans;

//import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@PrimaryKeyJoinColumn(name="idResponsableSede" , referencedColumnName="idUsuarioSistema")
@Table(name="responsableSede")
public class ResponsableSede extends UsuarioSistema {
	
	@OneToOne(optional=true) //cascade = CascadeType.ALL
	private Sede sede;
	
	public Sede getSede() {
		return sede;
	}
	public void setSede(Sede sede) {
		this.sede = sede;
	}
}
