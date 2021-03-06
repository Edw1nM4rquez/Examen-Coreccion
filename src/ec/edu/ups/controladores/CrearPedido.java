package ec.edu.ups.controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.edu.ups.dao.ComidaDAO;
import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.PedidoDAO;
import ec.edu.ups.dao.TarjetaCreditoDAO;
import ec.edu.ups.entidades.Comida;
import ec.edu.ups.entidades.Pedido;
import ec.edu.ups.entidades.TarjetaCredito;

/**
 * Servlet implementation class CrearPedido
 */
@WebServlet("/CrearPedido")
public class CrearPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearPedido() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String url = null;
		double total=0;
		LocalDateTime localDateTime = LocalDateTime.now();
	    ZonedDateTime zonedDateTime = localDateTime.atZone(ZoneOffset.systemDefault());
	    Instant instant = zonedDateTime.toInstant();
	    Date fecha = Date.from(instant);

		
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    
		PedidoDAO pedidoDAO = DAOFactory.getDAOFactory().getPedidoDAO();
		ComidaDAO comidaDAO = DAOFactory.getDAOFactory().getComidaDAO();
		TarjetaCreditoDAO tarjetaDAO = DAOFactory.getDAOFactory().getTarjetaCreditoDAO();	
		TarjetaCredito tarjeta=tarjetaDAO.read(request.getParameter("tarjetaCredito"));

		if(tarjeta==null) {
			request.setAttribute("Message", "<div class=\"alert alert-danger\" role=\"alert\">La ingresada no esta registrada</div>");
			url = "/Publica/crear_pedido.jsp";
		
		}else {	
			total+=Double.parseDouble(request.getParameter("precio1"));
			Pedido pedido=new Pedido();
			pedido.setCliente(request.getParameter("cliente").toUpperCase());
			pedido.setObservaciones(request.getParameter("observaciones").toUpperCase());
			pedido.setTarjetaCredito(tarjeta);
			pedido.setTotal(total);
			pedido.setFecha(fecha);
			pedido.setNumero(1); 

			pedidoDAO.create(pedido);	 
			
			Comida comida= new Comida();
			comida.setCodigo(1);
			comida.setNombre(request.getParameter("nombre1").toUpperCase());
			comida.setPedido(pedido);
			comida.setPrecioUnitario(Double.parseDouble(request.getParameter("precio1")));
			comidaDAO.create(comida);
			
			
			if(request.getParameter("nombre2").trim().length()!=0 ) {
				total+=Double.parseDouble(request.getParameter("precio2"));
				pedido.setTotal(total);
				pedidoDAO.update(pedido);
				ComidaDAO comidaDAO1 = DAOFactory.getDAOFactory().getComidaDAO();
				Comida comida1= new Comida();
				comida1.setCodigo(1);
				comida1.setNombre(request.getParameter("nombre2").toUpperCase());
				comida1.setPedido(pedido);
				comida1.setPrecioUnitario(Double.parseDouble(request.getParameter("precio2")));
				comidaDAO1.create(comida1);	
				
				
			}
			if(request.getParameter("nombre3").trim().length()!=0) {
				total+= Double.parseDouble(request.getParameter("precio3"));
				pedido.setTotal(total);
				pedidoDAO.update(pedido);
				ComidaDAO comidaDAO2 = DAOFactory.getDAOFactory().getComidaDAO();
				Comida comida2= new Comida();
				comida2.setCodigo(1);
				comida2.setNombre(request.getParameter("nombre3").toUpperCase());
				comida2.setPedido(pedido);
				comida2.setPrecioUnitario(Double.parseDouble(request.getParameter("precio3")));
				comidaDAO2.create(comida2);	
				
			}
			
	        request.setAttribute("Message", "<div class=\"alert alert-success\" role=\"alert\">\r\n" + 
	        		"  Pedido Realizado" + 
	        		"</div>");
			url = "/Publica/crear_pedido.jsp";
		}
					
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

}
