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
import model.CadastrarReserva;


@WebServlet("/InserirFormReserva")
public class InserirFormReserva extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public InserirFormReserva() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("nTestando");
		
		String matricula = request.getParameter("matricula");
		String cpf = request.getParameter("cpf");
		String placa = request.getParameter("placa");
		String diareserva = request.getParameter("diareserva");
		String total = request.getParameter("total");
		
		
		CadastrarReserva novoCadastrar = new CadastrarReserva();
		novoCadastrar.setMatricula(matricula);
		novoCadastrar.setCPF(cpf);
		novoCadastrar.setPlaca(placa);
		novoCadastrar.setDiaReserva(diareserva);
		novoCadastrar.setTotal(total);
		
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		dao.InserirReserva(novoCadastrar); 
		
		fabrica.fecharConexao();
		
		RequestDispatcher r = request.getRequestDispatcher( "fazerreserva.jsp" );
		r.forward( request, response );
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
System.out.println("Testando");
		
		
		
	}

}
