package controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import daos.AdministradorDAO;
import daos.ResponsableSedeDAO;
import daos.SedeDAO;
import daos.UsuarioSistemaDAO;
import beans.UsuarioSistema;
import beans.Sede;

@Controller
public class UsuarioController {

	@Autowired
    private UsuarioSistemaDAO usuarioSistemaDAO;
	
	@Autowired
	private ResponsableSedeDAO responsableSedeDAO;
	
	@Autowired
	private AdministradorDAO administradorDAO;
	
	@Autowired
	private SedeDAO sedeDAO;
	
	public ResponsableSedeDAO getResponsableSedeDAO() {   //tienen que estar los getters y los setters de dichas inyecciones.
		return responsableSedeDAO;
	}


	public AdministradorDAO getAdministradorDAO() {
		return administradorDAO;
	}


	public void setAdministradorDAO(AdministradorDAO administradorDAO) {
		this.administradorDAO = administradorDAO;
	}


	public SedeDAO getSedeDAO() {
		return sedeDAO;
	}


	public void setSedeDAO(SedeDAO sedeDAO) {
		this.sedeDAO = sedeDAO;
	}


	public void setResponsableSedeDAO(ResponsableSedeDAO responsableSedeDAO) {
		this.responsableSedeDAO = responsableSedeDAO;
	}


	public UsuarioSistemaDAO getUsuarioSistemaDAO() {
		return usuarioSistemaDAO;
	}


	public void setUsuarioDAO(UsuarioSistemaDAO usuarioSistemaDAO) {
		this.usuarioSistemaDAO = usuarioSistemaDAO;
	}

	@RequestMapping("nuevoUsuario") 
    public ModelAndView createUsuario(@ModelAttribute UsuarioSistema usuarioSistema) { 
		List<Sede> listaSedes = sedeDAO.listar();
        return new ModelAndView("altaUsuarioForm", "listaSedes", listaSedes);  
    }
	
	@RequestMapping("guardarUsuario")
    public ModelAndView alta(@ModelAttribute UsuarioSistema usuarioSistema, HttpServletRequest request) {
    	// Si el id del Usuario 0 entonces se crea el Usuario de lo contrario se actualiza 
        if(usuarioSistema.getId() == null){         	
        		
        		UsuarioSistema user = new UsuarioSistema();
            	
        		user.setNombre(usuarioSistema.getNombre());
        		user.setApellido(usuarioSistema.getApellido());
        		user.setUsuario(usuarioSistema.getUsuario());
        		user.setContrasenia(usuarioSistema.getContrasenia());
        		user.setPerfil(usuarioSistema.getPerfil());
            	
            	usuarioSistemaDAO.guardar(user);
        		
        } else {
        	
        	
        	usuarioSistemaDAO.actualizar(usuarioSistema);
        }
        return new ModelAndView("redirect:getAllUsuarios"); 
    }
	

	@RequestMapping(value = {"getAllUsuarios"})
    public ModelAndView listarTodos() {
	    List<UsuarioSistema> usuarioList = usuarioSistemaDAO.listar();
        return new ModelAndView("administrarUsuarios", "usuarioList", usuarioList);	
    }

	@RequestMapping(value = {"verResponsable"})
    public ModelAndView backendResponsable() {	    
        return new ModelAndView("menuResponsable");	
    }
	
	@RequestMapping(value = {"verAdmin"})
    public ModelAndView backendAdmin() {	    
        return new ModelAndView("menuAdministrador");	
    }
	
	@RequestMapping(value = {"verUsuario"})
    public ModelAndView backendUsuario() {	    
        return new ModelAndView("menuUsuario");	
    }	
	
	@RequestMapping(value = {"index", "/"})  
	public String login(Map<String,Object> model) {
		model.put("usuario", new UsuarioSistema());
		return "index";
	}
	
	@RequestMapping(value = {"logout"})
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
		
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView doLogin(@ModelAttribute("usuarioSistema") UsuarioSistema usuario) {
		
			 if(this.usuarioSistemaDAO.login(usuario.getUsuario(),usuario.getContrasenia())!=null){ 
				 String tipo = this.usuarioSistemaDAO.obtenerTipo(usuario.getUsuario(),usuario.getContrasenia()); 
				 if (tipo.equals("admin")){
					 return new ModelAndView("redirect:verAdmin");}
				 else{
					 if (tipo.equals("sede") ){
						 return new ModelAndView("redirect:verResponsable");}
					 else{
						 return new ModelAndView("redirect:verUsuario");}	 
				 }
			 }
			 else{	
				 return new ModelAndView("redirect:index");
			 }
		}
		
	}
	
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String login(@ModelAttribute("usuarioSistema") UsuarioSistema usuarioSistema) {
//	  
//	  String user = usuarioSistema.getNombre();
//	  String contra = usuarioSistema.getContrasenia();
//	  UsuarioSistema u;
//	  u = usuarioSistemaDao.login(user, contra);
//	  if(u != null){
//			HttpSession sesion = request.getSession(true); //creo la sesion. 
//			sesion.setAttribute("usuarioLogueado", usuEncontrado); //le seteo el valor a esa sesion.
//			String perfil = usuEncontrado.getUsuario(); 
//			if(perfil=="admin"){
//				response.sendRedirect("./menuAdministrador.jsp");  
//			}
//			else {
//				if(perfil=="sede"){
//					response.sendRedirect("./menuResponsable.jsp");  
//				}
//				else response.sendRedirect("./menuUsuario.jsp");
//		}
//	}
//		else {
//			JOptionPane.showMessageDialog(null,"Usuario o Contrase�a Incorrecto"); 
//			response.sendRedirect("./index.jsp");
//	}
//	  
//	if (result.hasErrors())
//	return "loginForm";
//	else
//	return "loginSuccess";
//	}
