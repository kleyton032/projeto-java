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
import model.Usuario;


@WebServlet("/InserirFormUsuario")
public class InserirFormUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public InserirFormUsuario() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("nTestando");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("Testando");
		
		
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");
		String adm = request.getParameter("adm");
		
		int numero = Integer.parseInt(adm);
		
		Usuario novoCadastrar = new Usuario();
		novoCadastrar.setUsuario(usuario);
		novoCadastrar.setSenha(senha);
		novoCadastrar.setNome(nome);
		novoCadastrar.setAdm(numero);
		
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		dao.InserirUsuario(novoCadastrar); 
		
		fabrica.fecharConexao();
		
		RequestDispatcher r = request.getRequestDispatcher( "home.jsp" );
		r.forward( request, response );
	}

}
