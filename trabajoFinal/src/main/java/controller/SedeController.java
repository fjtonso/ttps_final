package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import daos.SedeDAO;
import beans.Sede;

@Controller
public class SedeController {
	
	@Autowired
    private SedeDAO sedeDao;
	
	public SedeDAO getSedeDAO() {
		return sedeDao;
	}
	public void setSedeDAO(SedeDAO sedeDAO) {
		this.sedeDao = sedeDAO;
	}
	
	
	@RequestMapping(value = {"listadoSedes"})
	    public ModelAndView listarSedes() {
		 	List<Sede> sedeList = this.getSedeDAO().listar();
	        return new ModelAndView("gestionSedes", "sedeList", sedeList);
	    }
	
	@RequestMapping("altaSede")
    public ModelAndView crearSede(@ModelAttribute Sede sede) {
        return new ModelAndView("altaSedeForm");
    }
	
	@RequestMapping("guardarSede")
    public ModelAndView alta(@ModelAttribute Sede sede) {
    	// Si el id del Usuario 0 entonces se crea el Usuario de lo contrario se actualiza 
        if(sede.getId() == null){ 
        	
        	Sede se= new Sede();
        	se.setDireccion(sede.getDireccion());
        	se.setEmail(sede.getEmail());
        	se.setNombre(sede.getNombre());
 
        	this.getSedeDAO().guardar(se);
        } else {
        	this.getSedeDAO().actualizar(sede);
        }
        return new ModelAndView("redirect:listadoSedes");
    }
	
}
