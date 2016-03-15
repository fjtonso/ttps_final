package controller;

import java.util.List;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import beans.Componente;
import beans.Menu;
import daos.ComponenteDAO;
import daos.MenuDAO;

@Controller
public class ComponenteController {
	@Autowired
    private ComponenteDAO componenteDao;
	@Autowired
	private MenuDAO menuDao;
	
	public MenuDAO getMenuDao() {
		return menuDao;
	}

	public void setMenuDao(MenuDAO menuDao) {
		this.menuDao = menuDao;
	}

	public ComponenteDAO getComponenteDao() {
		return componenteDao;
	}

	public void setComponenteDao(ComponenteDAO componenteDao) {
		this.componenteDao = componenteDao;
	}
	
	@RequestMapping(value = {"listadoComponentes"})
    public ModelAndView listarComponentes() {
	 	List<Componente> componenteList = this.getComponenteDao().listar();
        return new ModelAndView("administrarComponentes", "componenteList", componenteList);
    }
	
	@RequestMapping("altaComponente")
    public ModelAndView crearSede(@ModelAttribute Componente componente) {
        return new ModelAndView("altaComponenteForm");
    }
	
	 @RequestMapping("editarComponente")
	    public ModelAndView editarComponente(@RequestParam long id, @ModelAttribute Componente componente) {
	        componente = this.getComponenteDao().recuperar(id);
	        return new ModelAndView("altaComponenteForm", "componenteObject", componente);
	    }
	
	 @RequestMapping("guardarComponente")
    public ModelAndView alta(@ModelAttribute Componente componente) {
    	// Si el id del Usuario 0 entonces se crea el Usuario de lo contrario se actualiza 
        if(componente.getId() == null){ 
        	
        	componenteDao.guardar(componente);
        } else {
        	this.getComponenteDao().actualizar(componente);
        }
        List<Componente> componenteList = this.getComponenteDao().listar();
        return new ModelAndView("administrarComponentes", "componenteList", componenteList);
    }
	 
	 @RequestMapping("borrarComponente")
	    public ModelAndView baja(@RequestParam long id) {
		 	List<Menu> menuList = this.getMenuDao().listar();
		 	int n=1;
		 	while (n<=(menuList.size()) && ((menuList.get(n-1).getBebida().getId()!=id) && 
		 			(menuList.get(n-1).getEntrada().getId()!=id) &&
		 			(menuList.get(n-1).getPlatoPrincipal().getId()!=id) &&
		 			(menuList.get(n-1).getPostre().getId()!=id))) {
		 		n++;
		 	}
		 	if (n<=menuList.size()){
		 		List<Componente> componenteList = this.getComponenteDao().listar();
		 		JOptionPane.showMessageDialog(null, "¡No se puede eliminar el componente, ya que pertenece al menos a un menu!");
		 		return new ModelAndView("administrarComponentes", "componenteList", componenteList);
		 	}
		 	else {
			    Componente componente = this.getComponenteDao().recuperar(id);
			    componenteDao.borrar(componente);
			    List<Componente> componenteList = this.getComponenteDao().listar();
			    JOptionPane.showMessageDialog(null, "¡Se ha eliminado correctamente al componente!");
		        return new ModelAndView("administrarComponentes", "componenteList", componenteList);
		 	}
	    }
}
