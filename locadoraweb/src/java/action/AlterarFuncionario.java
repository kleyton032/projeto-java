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
import model.Cadastrar;


@WebServlet("/AlterarFuncionario")
public class AlterarFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AlterarFuncionario() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("testando");
		String matricula = request.getParameter("matricula");
		
		
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		Cadastrar funcionario = new Cadastrar();
		funcionario = dao.BuscarFuncionario(matricula); 
		
		
		System.out.println("= "+funcionario.getMatricula());
		System.out.println("= "+funcionario.getRua());
		
		request.setAttribute("funcionario", funcionario);
		request.getRequestDispatcher( "alterarfuncionario.jsp" ).forward( request, response );
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("nTestando");
		
		
	}

}
