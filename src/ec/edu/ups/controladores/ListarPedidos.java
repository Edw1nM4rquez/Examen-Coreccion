package ec.edu.ups.controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListarPedidos
 */
@WebServlet("/ListarPedidos")
public class ListarPedidos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarPedidos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PedidoDAO pedidoDAO =DAOFactory.getDAOFactory().getPedidoDAO();
		String url = "";
		if(request.getParameter("pedidos").contentEquals("all")) {
		final java.util.List<Pedido> pedidos= Collections.unmodifiableList(new ArrayList<>(pedidoDAO.findAll()));
		System.out.println(pedidos);
		request.setAttribute("ListPedidos", pedidos);		
		url = "/Publica/listar_pedidos.jsp";
   
		}
		getServletContext().getRequestDispatcher(url).forward(request, response);
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PedidoDAO pedidoDAO =DAOFactory.getDAOFactory().getPedidoDAO();
		System.out.println(request.getParameter("search"));
		List<Pedido> pedidos= pedidoDAO.buscarPorTarjetaComida(request.getParameter("search"));		
		System.out.println(pedidos);
		request.setAttribute("ListPedidos", pedidos);		
		String url = "/Publica/listar_pedidos.jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);


	}

}
