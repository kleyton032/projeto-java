package action;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FabricaConexao;
import dao.JDBCInserirFormDAO;
import model.Usuario;

/**
 * Servlet implementation class Autenticar
 */
@WebServlet("/Autenticar")
public class Autenticar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Autenticar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		Usuario usuarioConf = new Usuario();
		String usuarioa = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		Usuario usuario = new Usuario();
		usuario.setUsuario(usuarioa);
		usuario.setSenha(senha);
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();
		
		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		usuarioConf = dao.BuscarUsuario(usuario); 
		
		fabrica.fecharConexao();
		
		if(usuarioConf.getUsuario() != null){
			HttpSession sessao = request.getSession();
			sessao.setAttribute("usuarioConf", usuarioConf);	
			
		request.getRequestDispatcher("home.jsp").forward(request, response);
		}else{
		response.sendRedirect("errologin.html");
		}
		
	}

}
