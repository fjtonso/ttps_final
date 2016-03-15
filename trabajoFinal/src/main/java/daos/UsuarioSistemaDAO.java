package daos;

import beans.UsuarioSistema;

public interface UsuarioSistemaDAO extends GenericDAO<UsuarioSistema> {

	UsuarioSistema login(String userName, String password);
	String obtenerTipo(String nombreUsuario, String contrasenia);
}
