package dao;

import java.util.List;

import model.Cadastrar;
import model.CadastrarAutomovel;
import model.CadastrarReserva;
import model.Reserva;
import model.Usuario;

public interface InserirFormDAO {
	public void InserirFuncionario(Cadastrar cadastrar);
	public void InserirCliente(Cadastrar cadastrar);
	public void InserirAutomovel(CadastrarAutomovel cadastrar);
	public void InserirReserva(CadastrarReserva cadastrar);
	public void InserirUsuario(Usuario cadastrar);
	public List<Cadastrar> ListarFuncionario();
	public List<Cadastrar> ListarCliente();
	public List<CadastrarAutomovel> ListarAutomovelDisponivel();
	public List<CadastrarReserva> ListarReserva();
	public List<CadastrarReserva> ListarReservaConfirmar();
	public void ExcluirFuncionario(String x);
	public void ExcluirCliente(String x);
	public void ExcluirAutomovel(String x);
	public void ExcluirReserva(String x);
	public void AlterarFuncionario(Cadastrar cadastrar);
        public CadastrarReserva AlterarReserva(String idreserva);
	public Cadastrar BuscarFuncionario(String matricula);
        public CadastrarReserva BuscarReserva(String x);
	public Reserva ConfirmarReserva(String matricula, String cpf, String placa);
	public Usuario BuscarUsuario(Usuario usuario);
	public List<Cadastrar> BuscarCliente(String tipo, String procurar);

}
