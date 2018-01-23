package servicios.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import servicios.modelo.Persona;


@Path("/")
public class GuilleService {

	@GET
	@Produces("application/xml")
	@Path("/apellido")
	public String apellido() {
		
		String apellido = "Sfoggia";
		return "<apellido>" + apellido +  "</apellido>";
	}
	
	@GET
	@Produces({MediaType.APPLICATION_JSON})
	@Path("/persona")
	public Persona persona() {

		Persona persona = new Persona();
		
		persona.setDni(36574576);
		persona.setNombre("Guille");
		
		return persona;		
		
	}
	
}
