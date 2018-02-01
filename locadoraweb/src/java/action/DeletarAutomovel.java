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

/**
 * Servlet implementation class DeletarAutomovel
 */
@WebServlet("/DeletarAutomovel")
public class DeletarAutomovel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletarAutomovel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("nTestando");
		//http://localhost:8080/locadoraweb/DeletarAutomovel?placa=?
		String placa = request.getParameter("placa");
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		dao.ExcluirAutomovel(placa);
		
		fabrica.fecharConexao();
		
		RequestDispatcher r = request.getRequestDispatcher( "consultaautomovel.jsp" );
		r.forward( request, response );
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
