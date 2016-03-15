package daos.factory;

import daos.*;
import daos.impl.*;

public class FactoryDAO {

	public static UsuarioSistemaDAO getUsuarioSistemaDAO() {
		return new UsuarioSistemaDAOHiberJPA();
	}

	public static AdministradorDAO getAdministradorDAO() {
		return new AdministradorDAOHiberJPA();
	}

	public static UsuarioDAO getUsuarioDAO() {
		return new UsuarioDAOHiberJPA();
	}
	
	public static ResponsableSedeDAO getResponsableSedeDAO() {
		return new ResponsableSedeDAOHiberJPA();
	}
		
	public static SugerenciaDAO getSugerenciaDAO() {
		return new SugerenciaDAOHiberJPA();
	}
	
	public static SedeDAO getSedeDAO() {
		return new SedeDAOHiberJPA();
	}	
	
	public static MenuDAO getMenuDAO() {
		return new MenuDAOHiberJPA();
	}

	public static DiaCompraDAO getDiaCompraDAO() {
		return new DiaCompraDAOHiberJPA();
	}
	
	public static CompraDAO getCompraDAO() {
		return new CompraDAOHiberJPA();
	}
	
	public static ComponenteDAO getComponenteDAO() {
		return new ComponenteDAOHiberJPA();
	}
	
	public static CartillaDAO getCartillaDAO() {
		return new CartillaDAOHiberJPA();
	}
}
