package listeners;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import java.util.ArrayList;

import beans.UsuarioSistema;
/**
 * Application Lifecycle Listener implementation class ListenerUsuario
 *
 */
@WebListener
public class ListenerUsuario implements ServletContextListener {
	
	private ServletContext context = null; 
	private ArrayList<UsuarioSistema> usuarios= new ArrayList<UsuarioSistema>();
	
    /**
     * Default constructor. 
     */
    public ListenerUsuario() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event)  { 
    	
    	context= event.getServletContext();   //pido el contexto
		
    	UsuarioSistema user1 = new UsuarioSistema();
		UsuarioSistema user2 = new UsuarioSistema();
		UsuarioSistema user3 = new UsuarioSistema();
		
		user1.setUsuario("admin");
		user1.setContrasenia("admin");
		
		user2.setUsuario("sede");
		user2.setContrasenia("sede");
		
		user3.setUsuario("usuario");
		user3.setContrasenia("usuario");
		
		usuarios.add(user1);
		usuarios.add(user2);
		usuarios.add(user3);
		
		context.setAttribute("usuarios", usuarios);
    }
	
}
