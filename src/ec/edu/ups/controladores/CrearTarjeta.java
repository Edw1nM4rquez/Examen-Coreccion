package ec.edu.ups.controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CrearTarjeta
 */
@WebServlet("/CrearTarjeta")
public class CrearTarjeta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearTarjeta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		TarjetaCreditoDAO tarjetaDao= DAOFactory.getDAOFactory().getTarjetaCreditoDAO();

		String url = "";
		if(request.getParameter("tarjetas").contentEquals("all")) {
		request.setAttribute("tarjetas", tarjetaDao.findAll());	
		System.out.println(tarjetaDao.findAll());
		url = "/Publica/crear_tarjeta.jsp";
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		TarjetaCreditoDAO tarjetaDao= DAOFactory.getDAOFactory().getTarjetaCreditoDAO();
		
        TarjetaCredito tarjeta=new TarjetaCredito();
        tarjeta.setNumero(request.getParameter("numero"));
        tarjeta.setPropietario(request.getParameter("propietario").toUpperCase());
        tarjeta.setFechaCaducidad(request.getParameter("fechaCaducidad"));
        tarjeta.setCvv(request.getParameter("cvv"));
        
        tarjetaDao.create(tarjeta);
        
        request.setAttribute("tarjetas", tarjetaDao.findAll());
        String url = "/Publica/crear_tarjeta.jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);
	
	}

}
