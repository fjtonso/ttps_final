package daos;

import java.util.List;

import beans.Componente;

public interface ComponenteDAO extends GenericDAO<Componente> {

	List<Componente> listarComponente(String tipo);
	
}
