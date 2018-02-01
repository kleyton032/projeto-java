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


@WebServlet("/DeletarFuncionario")
public class DeletarFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DeletarFuncionario() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("nTestando");
		//http://localhost:8080/locadoraweb/DeletarFuncionario?matricula=?
		String matricula = request.getParameter("matricula");
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		dao.ExcluirFuncionario(matricula);
		
		fabrica.fecharConexao();
		
		RequestDispatcher r = request.getRequestDispatcher( "consultafuncionario.jsp" );
		r.forward( request, response );
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
