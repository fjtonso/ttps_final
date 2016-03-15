package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import src.main.java.translator.MenuTranslator;
import beans.Menu;
import beans.Componente;
import daos.MenuDAO;
import daos.ComponenteDAO;

@Controller
public class MenuController {
	
	@Autowired
    private MenuDAO menuDAO;
	
	@Autowired
    private MenuTranslator menuTranslator;
	
	@Autowired
	private ComponenteDAO componenteDAO;
	
	public MenuDAO getMenuDAO() {
		return menuDAO;
	}

	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}
//	
//	@Autowired
//	private ConversionService conversionService;
//	Autowiring the ConversionService we declared in the context file above.
	 
//	@InitBinder
//	public void registerConversionServices(WebDataBinder dataBinder) {
//	       dataBinder.setConversionService(conversionService);
//	}
	
	@RequestMapping(value = {"listadoMenues"})
    public ModelAndView listarMenues() {
		List<Menu> menuList = this.getMenuDAO().listar();
        return new ModelAndView("administrarMenues", "menuList", menuList);
	}
	
	@RequestMapping("altaMenu")
    public ModelAndView crearMenu(@ModelAttribute Menu menu) {
//		List<Componente> listaComponentes = componenteDAO.listar();
		
		Menu menu2= null ;
		Map<String, Object> mapa = new HashMap<String, Object>();
	    mapa.put("menuObject", menu2);
	    mapa.put("postre", componenteDAO.listarComponente("POSTRE"));
	    mapa.put("entrada", componenteDAO.listarComponente("ENTRADA"));
	    mapa.put("principal", componenteDAO.listarComponente("PLATOPRINCIPAL"));
	    mapa.put("bebida", componenteDAO.listarComponente("BEBIDA"));
        return new ModelAndView("altaMenuForm",  "mapa", mapa);
    }
	
	 @RequestMapping("editarMenu")
	    public ModelAndView editarMenu(@RequestParam long id, @ModelAttribute Menu menu) {
	        menu = this.getMenuDAO().recuperar(id); // enviar el menu y el listado de los componentes (como en el alta) a traves de un mapa
	        List<Componente> listaComponentes = componenteDAO.listar();
	        Map<String, Object> mapa = new HashMap<String, Object>();
	        mapa.put("menuObject", menu);
	        mapa.put("listaComponentes", listaComponentes);
	        return new ModelAndView("altaMenuForm", "mapa", mapa);
	    }
	
	@RequestMapping(value="guardarMenu",method=RequestMethod.POST)
    public ModelAndView alta(@ModelAttribute("menu")   MenuDTO  menuDTO,BindingResult result,Model model) {
    	// Si el id del menu es 0 entonces se crea el menu de lo contrario se actualiza 
        if(menu.getId() == null){        	
        	this.getMenuDAO().guardar(menuTranslator.translate(menuDTO));
        } else {
        	this.getMenuDAO().actualizar(menuTranslator.translate(menuDTO));
        }
        List<Menu> menuList = this.getMenuDAO().listar();
        return new ModelAndView("administrarMenues", "menuList", menuList);
    }	
	
	@RequestMapping("borrarMenu")
    public ModelAndView baja(@RequestParam long id) {
//	 	List<Menu> menuList = this.getMenuDao().listar();
//	 	int n=1;
//	 	while (n<=(menuList.size()) && ((menuList.get(n-1).getBebida().getId()!=id) && 
//	 			(menuList.get(n-1).getEntrada().getId()!=id) &&
//	 			(menuList.get(n-1).getPlatoPrincipal().getId()!=id) &&
//	 			(menuList.get(n-1).getPostre().getId()!=id))) {
//	 		n++;
//	 	}
//	 	if (n<=menuList.size()){
//	 		List<Componente> componenteList = this.getComponenteDao().listar();
//	 		JOptionPane.showMessageDialog(null, "¡No se puede eliminar el componente, ya que pertenece al menos a un menu!");
//	 		return new ModelAndView("administrarComponentes", "componenteList", componenteList);
//	 	}
//	 	else {
		    Menu menu = this.getMenuDAO().recuperar(id);
		    menuDAO.borrar(menu);
		    List<Menu> menuList = this.getMenuDAO().listar();
		    JOptionPane.showMessageDialog(null, "¡Se ha eliminado correctamente al menu!");
	        return new ModelAndView("administrarMenues", "menuList", menuList);
//	 	}
    }
}
