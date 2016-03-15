package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Componente;
import beans.Menu;
import beans.Sede;
import beans.UsuarioSistema;
import daos.ComponenteDAO;
import daos.MenuDAO;
import daos.SedeDAO;
import daos.UsuarioSistemaDAO;
import daos.factory.FactoryDAO;

/**
 * Servlet implementation class TestPrueba
 */
@WebServlet("/TestPrueba")
public class TestPrueba extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestPrueba() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("pasa por aca");
		//Se persiste el primer usuario
		UsuarioSistema usuario1 = new UsuarioSistema();
		usuario1.setContrasenia("admin");
		usuario1.setUsuario("admin");
		usuario1.setPerfil("admin");
		usuario1.setNombre("Juan");
		usuario1.setApellido("Perez");
		UsuarioSistemaDAO usuarioDAO1 = FactoryDAO.getUsuarioSistemaDAO();
		usuarioDAO1.guardar(usuario1);
		System.out.println("Se persiste el primer usuario");
		
		//Se persiste el segundo usuario
		UsuarioSistema usuario2 = new UsuarioSistema();
		usuario2.setContrasenia("sede");
		usuario2.setUsuario("sede");
		usuario2.setPerfil("sede");
		usuario2.setNombre("Jose");
		usuario2.setApellido("Paz");
		UsuarioSistemaDAO usuarioDAO2 = FactoryDAO.getUsuarioSistemaDAO();
		usuarioDAO2.guardar(usuario2);
		System.out.println("Se persiste el segundo usuario");
		
		//Se persiste el tercer usuario
		UsuarioSistema usuario3 = new UsuarioSistema();
		usuario3.setContrasenia("usuario");
		usuario3.setUsuario("usuario");
		usuario3.setPerfil("usuario");
		usuario3.setNombre("Joaquin");
		usuario3.setApellido("Prado");
		UsuarioSistemaDAO usuarioDAO3 = FactoryDAO.getUsuarioSistemaDAO();
		usuarioDAO3.guardar(usuario3);
		System.out.println("Se persiste el tercer usuario");
		
		//Se persiste la primer sede
		Sede sede1= new Sede();
		sede1.setDireccion("Boulevard 120 entre 61 y 62");
		sede1.setNombre("Bosque");
		sede1.setEmail("bosque@hotmail.com");
		SedeDAO sedeDAO1 = FactoryDAO.getSedeDAO();
		sedeDAO1.guardar(sede1);
		System.out.println("Se persiste la primer sede");
		
		//Se persiste la segunda sede
		Sede sede2= new Sede();
		sede2.setDireccion("44 N&uacute;mero 733");
		sede2.setNombre("Centro");
		sede2.setEmail("centro@hotmail.com");
		SedeDAO sedeDAO2 = FactoryDAO.getSedeDAO();
		sedeDAO2.guardar(sede2);
		System.out.println("Se persiste la segunda sede");
		
		//Se persiste un menu
		Menu menu1= new Menu();
		menu1.setLunes(true);
		menu1.setMartes(true);
		menu1.setMiercoles(false);
		menu1.setJueves(false);
		menu1.setViernes(true);
		menu1.setNombre("menu 1");
		MenuDAO menuDAO1 = FactoryDAO.getMenuDAO();
		menuDAO1.guardar(menu1);
		System.out.println("Se persiste un menu");
		
		//Se persiste un componente
		Componente com1= new Componente();
		com1.setCeliaco(true);
		com1.setDiabetico(true);
		com1.setHipertenso(false);
		com1.setIntoleranteLactosa(false);
		com1.setVegetariano(false);
		com1.setNombre("gaseosa");
		ComponenteDAO comDAO1 = FactoryDAO.getComponenteDAO();
		comDAO1.guardar(com1);
		System.out.println("Se persiste un componente");
		
		menu1.setBebida(com1);
		//Se actualiza un menu con un componente
		FactoryDAO.getMenuDAO().actualizar(menu1);
		System.out.println("Se actualiza un menu con un componente");
		
		//Se persiste el segundo componente
		Componente com2= new Componente();
		com2.setCeliaco(true);
		com2.setDiabetico(false);
		com2.setHipertenso(true);
		com2.setIntoleranteLactosa(false);
		com2.setVegetariano(false);
		com2.setNombre("tostados de jamon y queso");
		ComponenteDAO comDAO2 = FactoryDAO.getComponenteDAO();
		comDAO2.guardar(com2);
		System.out.println("Se persiste el segundo componente");
		
		menu1.setEntrada(com2);
		//Se actualiza un menu con el segundo componente
		FactoryDAO.getMenuDAO().actualizar(menu1);
		System.out.println("Se actualiza un menu con el segundo componente");
		
		//Se persiste el segundo menu
		Menu menu2= new Menu();
		menu2.setLunes(true);
		menu2.setMartes(true);
		menu2.setMiercoles(false);
		menu2.setJueves(false);
		menu2.setViernes(true);
		menu2.setBebida(com1);
		menu2.setEntrada(com2);
		menu2.setPlatoPrincipal(com1);
		menu2.setPostre(com1);
		menu2.setNombre("menu 2");
		MenuDAO menuDAO2 = FactoryDAO.getMenuDAO();
		menuDAO2.guardar(menu2);
		System.out.println("Se persiste otro menu");
		
		//Se elimina un menu
		FactoryDAO.getMenuDAO().borrar((long) 2);
		System.out.println("Se elimina un menu");
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
