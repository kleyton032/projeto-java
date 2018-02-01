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
import model.CadastrarAutomovel;


@WebServlet("/InserirFormAutomovel")
public class InserirFormAutomovel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public InserirFormAutomovel() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("nTestando");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("Testando");
		
		
		String placa = request.getParameter("placa");
		String tipo = request.getParameter("tipo");
		String modelo = request.getParameter("modelo");
		String ano = request.getParameter("ano");
		String cor = request.getParameter("cor");
		String preco = request.getParameter("preco")+".00";
		String chassi = request.getParameter("chassi");

		
		CadastrarAutomovel novoCadastrar = new CadastrarAutomovel();
		novoCadastrar.setPlaca(placa);
		novoCadastrar.setTipo(tipo);
		novoCadastrar.setModelo(modelo);
		novoCadastrar.setAno(ano);
		novoCadastrar.setCor(cor);
		novoCadastrar.setPreco(preco);
                novoCadastrar.setChassi(chassi);
		
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		dao.InserirAutomovel(novoCadastrar); 
		
		fabrica.fecharConexao();
		
		RequestDispatcher r = request.getRequestDispatcher( "cadastrarautomovel.jsp" );
		r.forward( request, response );
	}

}
