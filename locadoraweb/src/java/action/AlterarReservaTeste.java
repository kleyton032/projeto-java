package action;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FabricaConexao;
import dao.JDBCInserirFormDAO;
import model.CadastrarReserva;


@WebServlet("/AlterarReservaTeste")
public class AlterarReservaTeste extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AlterarReservaTeste() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("testando");
		String idreserva = request.getParameter("idreserva");
		
		
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		CadastrarReserva reserva = new CadastrarReserva();
		reserva = dao.BuscarReserva(idreserva); 
		
		
		request.setAttribute("reserva", reserva);
		request.getRequestDispatcher( "alterarreserva.jsp" ).forward( request, response );
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("nTestando");
		
		
	}

}
