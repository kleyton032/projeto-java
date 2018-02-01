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


@WebServlet("/DeletarReserva")
public class DeletarReserva extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeletarReserva() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("nTestando");
		//http://localhost:8080/locadoraweb/DeletarReserva?IDReserva=?
		String reserva = request.getParameter("IDReserva");
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		dao.ExcluirReserva(reserva);
		
		fabrica.fecharConexao();
		
		RequestDispatcher r = request.getRequestDispatcher( "consultareserva.jsp" );
		r.forward( request, response );
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
