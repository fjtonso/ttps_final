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
		menu.setBebida(componenteDAO.buscar(Long.parseLong(menuDTO.getBebida(), 36)));
		menu.setCartilla(componenteDAO.buscar(Long.parseLong(menuDTO.getCartilla(), 36)));
		menu.setPlatoPrincipal(componenteDAO.buscar(Long.parseLong(menuDTO.getPlatoPrincipal(), 36)));
		menu.setPostre(componenteDAO.buscar(Long.parseLong(menuDTO.getPostre(), 36))):
		menu.setEntrada(componenteDAO.buscar(Long.parseLong(menuDTO.getEntrada(), 36)));	
	}
	
}
