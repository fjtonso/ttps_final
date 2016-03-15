package beans;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@PrimaryKeyJoinColumn(name="idAdministrador" , referencedColumnName="idUsuarioSistema")
@Table(name="administrador")
public class Administrador extends UsuarioSistema {
	
}
