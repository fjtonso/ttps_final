package src.main.java.translator;


import src.main.java.dto.MenuDTO;

public class MenuTranslator {

	@Autowired
    private ComponenteDAO componenteDAO;
	
	
	
	public Menu translate(MenuDTO menuDTO){
		Menu menu = new Menu();
		menu.setLunes(menuDTO.isLunes());
		menu.setMartes(menuDTO.isMartes());
		menu.setMiercoles(menuDTO.isMiercoles());
		menu.setJueves(menuDTO.isJueves());
		menu.setViernes(menuDTO.isViernes());
		menu.setBebida(componenteDAO.buscar(menuDTO.getBebida()));
		menu.setCartilla(componenteDAO.buscar(menuDTO.getCartilla()));
		menu.setPlatoPrincipal(componenteDAO.buscar(menuDTO.getPlatoPrincipal()));
		menu.setPostre(componenteDAO.buscar(menuDTO.getPostre()))
		menu.setEntrada(componenteDAO.buscar(menuDTO.getEntrada()));
	}
	
}
