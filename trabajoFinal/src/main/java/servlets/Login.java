package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import java.util.ArrayList;
import java.util.Iterator;

import beans.UsuarioSistema;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ServletContext context;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombreUsuario = request.getParameter("usuario");    //uso el getParameters porque se lo mando desde el formulario login.jsp.
		String contrasenia = request.getParameter("pass");
		
		context = this.getServletContext();  //estas 2 lineas es para pedirle al contexto el arreglo de usuarios que fue guardado por el Listener.
		ArrayList<UsuarioSistema> usuarios = (ArrayList<UsuarioSistema>) context.getAttribute("usuarios"); 
		boolean encontreUsuario = false;
		UsuarioSistema usuEncontrado = null;
		
		Iterator<UsuarioSistema> it = usuarios.iterator();  //uso un iterador para recorrer el arreglo.
		while (it.hasNext() && !encontreUsuario) {
			UsuarioSistema usuario = it.next();
			if ((usuario.getUsuario().equals(nombreUsuario)) && (usuario.getContrasenia().equals(contrasenia))) {
				encontreUsuario=true;
			
				usuEncontrado = usuario;
			}
		}//end while
		if(encontreUsuario){
			HttpSession sesion = request.getSession(true); //creo la sesion. 
			sesion.setAttribute("usuarioLogueado", usuEncontrado); //le seteo el valor a esa sesion.
			String perfil = usuEncontrado.getUsuario(); 
			if(perfil=="admin"){
				response.sendRedirect("./menuAdministrador.jsp");  
			}
			else {
				if(perfil=="sede"){
					response.sendRedirect("./menuResponsable.jsp");  
				}
				else response.sendRedirect("./menuUsuario.jsp");
		}
	}
		else {
			JOptionPane.showMessageDialog(null,"Usuario o Contrase�a Incorrecto"); 
			response.sendRedirect("./index.jsp");
	}
	}

}
