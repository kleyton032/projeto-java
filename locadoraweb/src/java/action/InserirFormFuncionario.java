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


@WebServlet("/InserirFormFuncionario")
public class InserirFormFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public InserirFormFuncionario() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("Testando");
		
		String matricula = request.getParameter("matricula");
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String dia = request.getParameter("dia");
		String mes = request.getParameter("mes");
		String ano = request.getParameter("ano");
		String email = request.getParameter("email");
		String telefone = request.getParameter("tel");
		String sexo = request.getParameter("sexo");
		String estado = request.getParameter("estado");
		String cidade = request.getParameter("cidade");
		String bairro = request.getParameter("bairro");
		String rua = request.getParameter("rua");
		
		Cadastrar novoCadastrar = new Cadastrar();
		novoCadastrar.setMatricula(matricula);
		novoCadastrar.setNome(nome);
		novoCadastrar.setCPF(cpf);
		novoCadastrar.setDia(dia);
		novoCadastrar.setMes(mes);
		novoCadastrar.setAno(ano);
		novoCadastrar.setEmail(email);
		novoCadastrar.setTelefone(telefone);
		novoCadastrar.setSexo(sexo);
		novoCadastrar.setEstado(estado);
		novoCadastrar.setCidade(cidade);
		novoCadastrar.setBairro(bairro);
		novoCadastrar.setRua(rua);
		
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		dao.InserirFuncionario(novoCadastrar); 
		
		fabrica.fecharConexao();
		
		RequestDispatcher r = request.getRequestDispatcher( "cadastrarfuncionario.jsp" );
		r.forward( request, response );
	}

}
