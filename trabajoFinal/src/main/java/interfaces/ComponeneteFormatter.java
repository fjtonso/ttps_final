package interfaces;

import java.text.ParseException;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import daos.ComponenteDAO;
import daos.MenuDAO;
import beans.Componente;

/* ActorFormatter.java */

//Removed the imports for brevity

@Component
public class ComponeneteFormatter implements Formatter<Componente> {   
   @Autowired
   private MenuDAO menuDAO;
	
	@Autowired
	private ComponenteDAO componenteDAO;
   //Some service class which can give the Actor after
   //fetching from Database  

	@Override
	public String print(Componente componente, Locale arg1) {
		return componente.getNombre();
	}
	
	@Override
	public Componente parse(String componenteId, Locale arg1) throws ParseException {		
		return componenteDAO.recuperar(Long.parseLong("componenteId", 36) );
		
	}
}