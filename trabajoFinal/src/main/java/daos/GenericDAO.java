package daos;

import java.util.List;

public interface GenericDAO<T> {
	List<T> listar();
	T recuperar(Long id);
	void guardar(T entidad);
	void actualizar(T entidad);
	void borrar(T entidad);
	
}