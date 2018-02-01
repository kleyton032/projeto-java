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
import model.Reserva;


@WebServlet("/ConfirmarReserva")
public class ConfirmarReserva extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ConfirmarReserva() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("testando");
				
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println("nTestando");
		
		String matricula = request.getParameter("matricula");
		String cpf = request.getParameter("cpf");
		String placa = request.getParameter("placa");
		String dia = request.getParameter("diareserva");
		
		
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);
		Reserva reserva = new Reserva();
		
		reserva = dao.ConfirmarReserva(matricula, cpf, placa); 
		int diar = Integer.parseInt(dia);
		reserva.setDia(diar);
		
		if(reserva.getPlaca()!=null){
		Double valorTotal;
		
		if(reserva.getDia() > 4 && reserva.getConsultas() > 4){
		valorTotal = Double.parseDouble(reserva.getPreco()) * reserva.getDia() - Double.parseDouble(reserva.getPreco())*reserva.getDia()*20/100;
		String variavel = Double.toString(valorTotal);
		reserva.setPreco(variavel);
		
		}else if(reserva.getDia()>4 && reserva.getConsultas() < 5){
			valorTotal = Double.parseDouble(reserva.getPreco()) * reserva.getDia() - (Double.parseDouble(reserva.getPreco()) * reserva.getDia()*15/100);
			String variavel = Double.toString(valorTotal);
			
			reserva.setPreco(variavel);
			
		}else{
			valorTotal = Double.parseDouble(reserva.getPreco())*reserva.getDia();
			String variavel = Double.toString(valorTotal);
			reserva.setPreco(variavel);
		}
		}
		System.out.println(reserva.getConsultas());
		System.out.println(reserva.getPreco());
		
		request.setAttribute("reserva", reserva);
		request.getRequestDispatcher( "confirmarreserva.jsp" ).forward( request, response );

	}

}
