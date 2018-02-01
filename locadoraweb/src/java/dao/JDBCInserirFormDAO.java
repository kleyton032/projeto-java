package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import javax.resource.cci.ResultSet;

import model.Cadastrar;
import model.CadastrarAutomovel;
import model.CadastrarReserva;
import model.Reserva;
import model.Usuario;

public class JDBCInserirFormDAO implements InserirFormDAO {

    Connection conexao;

    public JDBCInserirFormDAO(Connection conexao) {
        this.conexao = conexao;
    }

    public void InserirFuncionario(Cadastrar cadastrar) {
        // INSERT INTO funcionario(matricula_funcionario, nomef, cpf,
        // data_nascimento, email, telefone, sexo, estado, cidade, bairro, rua)
        // VALUES(213456, "Mateus de Castro", "12168586403", 19960106,
        // "mateus@hotmail.com", "8134310140", "M", "Pernambuco", "Olinda",
        // "Jardim Atl�ntico", "Rua 2")
        String comando = "INSERT INTO funcionario(matricula_funcionario, nomef, cpf, data_nascimento, email, telefone, sexo, estado, cidade, bairro, rua) "
                        + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, cadastrar.getMatricula());
            p.setString(2, cadastrar.getNome());
            p.setString(3, cadastrar.getCPF());
            p.setString(4, cadastrar.getAno() + cadastrar.getMes() + cadastrar.getDia());
            p.setString(5, cadastrar.getEmail());
            p.setString(6, cadastrar.getTelefone());
            p.setString(7, cadastrar.getSexo());
            p.setString(8, cadastrar.getEstado());
            p.setString(9, cadastrar.getCidade());
            p.setString(10, cadastrar.getBairro());
            p.setString(11, cadastrar.getRua());

            p.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void InserirCliente(Cadastrar cadastrar) {
        // INSERT INTO cliente(nome, cpf, data_nascimento, email, telefone,
        // sexo, estado, cidade, bairro, rua)
        // VALUES("Mateus de Castro", "12168586403", 19960106,
        // "mateus@hotmail.com", "8134310140", "M", "Pernambuco", "Olinda",
        // "Jardim Atl�ntico", "Rua 2")

        String comando = "INSERT INTO cliente(nome, cpf, data_nascimento, email, telefone, sexo, estado, cidade, bairro, rua) "
                        + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, cadastrar.getNome());
            p.setString(2, cadastrar.getCPF());
            p.setString(3, cadastrar.getAno() + cadastrar.getMes() + cadastrar.getDia());
            p.setString(4, cadastrar.getEmail());
            p.setString(5, cadastrar.getTelefone());
            p.setString(6, cadastrar.getSexo());
            p.setString(7, cadastrar.getEstado());
            p.setString(8, cadastrar.getCidade());
            p.setString(9, cadastrar.getBairro());
            p.setString(10, cadastrar.getRua());

            p.execute();

        } catch (SQLException e) {
                e.printStackTrace();
        }

    }

    public void InserirAutomovel(CadastrarAutomovel cadastrar) {
        // INSERT INTO automovel(placa, tipo, modelo, ano, cor, preco, chassi, quilometragem, status)
        // VALUES ("JDB6744", "FORD", "ECO", 2010, "PRETO", 6805.00,
        // "KSLC1236S5FG487HJ", 32000, 'disponivel');
        String comando = "INSERT INTO automovel(placa, tipo, modelo, ano, cor, preco, chassi, status)"
                        + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";


        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, cadastrar.getPlaca());
            p.setString(2, cadastrar.getTipo());
            p.setString(3, cadastrar.getModelo());
            p.setString(4, cadastrar.getAno());
            p.setString(5, cadastrar.getCor());
            p.setString(6, cadastrar.getPreco());
            p.setString(7, cadastrar.getChassi());
            p.setString(8, "disponivel");

            p.execute();

        } catch (SQLException e) {
                e.printStackTrace();
        }

    }

    public void InserirReserva(CadastrarReserva cadastrar) {
        // INSERT INTO reserva(funcionario_matricula, cliente_cpf, automovel_placa, dias, total, status)
        //VALUES (123565, "12345678901", "asd1234", 2, 180.0, 'aberto');

        String comando = "INSERT INTO reserva(funcionario_matricula, cliente_cpf, automovel_placa, dias, total, status) "
                        + "VALUES (?, ?, ?, ?, ?, ?)";

        System.out.println(cadastrar.getTotal());

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, cadastrar.getMatricula());
            p.setString(2, cadastrar.getCPF());
            p.setString(3, cadastrar.getPlaca());
            p.setString(4, cadastrar.getDiaReserva());
            p.setString(5, cadastrar.getTotal());
            p.setString(6, "aberto");

            System.out.println(comando);

            p.execute();

        } catch (SQLException e) {
                e.printStackTrace();
        }

        //----------------------------------------------------------------------------------
        //UPDATE automovel SET status = 'reservado' where placa = 'BCD3256';
        comando = "UPDATE automovel SET status = 'reservado' where placa = '"+cadastrar.getPlaca()+"'";
        System.out.println(comando);
        try{
        p = this.conexao.prepareStatement(comando);

        p.execute();
        System.out.println("Alterado!");

        }catch(SQLException e){
            e.printStackTrace();
        }

    }

    public void InserirUsuario(Usuario cadastrar){
        //insert into usuario (usuario, senha, nome, adm) values ('root', '1234', 'Administrador', 1);
        String comando = "insert into usuario (usuario, senha, nome, adm) "+
        "values (?, ?, ?, ?);";

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, cadastrar.getUsuario());
            p.setString(2, cadastrar.getSenha());
            p.setString(3, cadastrar.getNome());
            p.setInt(4, cadastrar.getAdm());

            p.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public List<Cadastrar> ListarFuncionario() {
        List<Cadastrar> funcionario = new ArrayList<Cadastrar>();

        String comando = "SELECT * FROM funcionario order by nomef";
        try {
                java.sql.Statement stmt = conexao.createStatement();
                java.sql.ResultSet rs = stmt.executeQuery(comando);

                while (rs.next()) {
                    Cadastrar cadastrar = new Cadastrar();

                    int codigo = rs.getInt("matricula_funcionario");
                    String nome = rs.getString("nomef");
                    String cpf = rs.getString("cpf");
                    Date data = rs.getDate("data_nascimento");
                    String email = rs.getString("email");
                    String telefone = rs.getString("telefone");
                    String sexo = rs.getString("sexo");
                    String estado = rs.getString("estado");
                    String cidade = rs.getString("cidade");
                    String bairro = rs.getString("bairro");
                    String rua = rs.getString("rua");

                    String matricula = Integer.toString(codigo);

                    cadastrar.setMatricula(matricula);
                    cadastrar.setNome(nome);
                    cadastrar.setCPF(cpf);
                    cadastrar.setData(data);
                    cadastrar.setEmail(email);
                    cadastrar.setTelefone(telefone);
                    cadastrar.setSexo(sexo);
                    cadastrar.setEstado(estado);
                    cadastrar.setCidade(cidade);
                    cadastrar.setBairro(bairro);
                    cadastrar.setRua(rua);

                    funcionario.add(cadastrar);

                }

        } catch (Exception e) {
            e.printStackTrace();
        }
    return funcionario;
    }

    public List<Cadastrar> ListarCliente() {
        List<Cadastrar> cliente = new ArrayList<Cadastrar>();

        String comando = "SELECT * FROM cliente order by nome";
        try {
                java.sql.Statement stmt = conexao.createStatement();
                java.sql.ResultSet rs = stmt.executeQuery(comando);

                while (rs.next()) {
                    Cadastrar cadastrar = new Cadastrar();

                    String nome = rs.getString("nome");
                    String cpf = rs.getString("cpf");
                    Date data = rs.getDate("data_nascimento");
                    String email = rs.getString("email");
                    String telefone = rs.getString("telefone");
                    String sexo = rs.getString("sexo");
                    String estado = rs.getString("estado");
                    String cidade = rs.getString("cidade");
                    String bairro = rs.getString("bairro");
                    String rua = rs.getString("rua");


                    cadastrar.setNome(nome);
                    cadastrar.setCPF(cpf);
                    cadastrar.setData(data);
                    cadastrar.setEmail(email);
                    cadastrar.setTelefone(telefone);
                    cadastrar.setSexo(sexo);
                    cadastrar.setEstado(estado);
                    cadastrar.setCidade(cidade);
                    cadastrar.setBairro(bairro);
                    cadastrar.setRua(rua);

                    cliente.add(cadastrar);

                }

        } catch (Exception e) {
            e.printStackTrace();
        }

    return cliente;
    }

    public List<Cadastrar> BuscarCliente(String tipo, String procurar){
        List<Cadastrar> cliente = new ArrayList<Cadastrar>();

        //select * from cliente where nome like '%ic%'

        String comando = "SELECT * FROM cliente where "+tipo+" like '%"+procurar+"%'";
        try {
            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {
                Cadastrar cadastrar = new Cadastrar();

                String nome = rs.getString("nome");
                String cpf = rs.getString("cpf");
                Date data = rs.getDate("data_nascimento");
                String email = rs.getString("email");
                String telefone = rs.getString("telefone");
                String sexo = rs.getString("sexo");
                String estado = rs.getString("estado");
                String cidade = rs.getString("cidade");
                String bairro = rs.getString("bairro");
                String rua = rs.getString("rua");


                cadastrar.setNome(nome);
                cadastrar.setCPF(cpf);
                cadastrar.setData(data);
                cadastrar.setEmail(email);
                cadastrar.setTelefone(telefone);
                cadastrar.setSexo(sexo);
                cadastrar.setEstado(estado);
                cadastrar.setCidade(cidade);
                cadastrar.setBairro(bairro);
                cadastrar.setRua(rua);

                cliente.add(cadastrar);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    return cliente;
    }

    public List<CadastrarAutomovel> ListarAutomovel() {
        List<CadastrarAutomovel> automovel = new ArrayList<CadastrarAutomovel>();

        String comando = "SELECT * FROM automovel";
        try {
            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {
                CadastrarAutomovel cadastrar = new CadastrarAutomovel();

                String placa = rs.getString("placa");
                String tipo = rs.getString("tipo");
                String modelo = rs.getString("modelo");
                String ano = rs.getString("ano");
                String cor = rs.getString("cor");
                String preco = rs.getString("preco");
                String chassi = rs.getString("chassi");
                String status = rs.getString("status");


                cadastrar.setPlaca(placa);
                cadastrar.setTipo(tipo);
                cadastrar.setModelo(modelo);
                cadastrar.setAno(ano);
                cadastrar.setCor(cor);
                cadastrar.setPreco(preco);
                cadastrar.setChassi(chassi);
                cadastrar.setStatus(status);

                automovel.add(cadastrar);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    return automovel;
    }

    public List<CadastrarAutomovel> ListarAutomovelDisponivel() {
        List<CadastrarAutomovel> automovel = new ArrayList<CadastrarAutomovel>();

        String comando = "SELECT * FROM automovel where status = 'disponivel'";
        try {
            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {
                CadastrarAutomovel cadastrar = new CadastrarAutomovel();

                String placa = rs.getString("placa");
                String tipo = rs.getString("tipo");
                String modelo = rs.getString("modelo");
                String ano = rs.getString("ano");
                String cor = rs.getString("cor");
                String preco = rs.getString("preco");
                String chassi = rs.getString("chassi");


                cadastrar.setPlaca(placa);
                cadastrar.setTipo(tipo);
                cadastrar.setModelo(modelo);
                cadastrar.setAno(ano);
                cadastrar.setCor(cor);
                cadastrar.setPreco(preco);
                cadastrar.setChassi(chassi);

                automovel.add(cadastrar);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    return automovel;
    }


    public List<CadastrarReserva> ListarReserva() {
        List<CadastrarReserva> reserva = new ArrayList<CadastrarReserva>();

        String comando = "SELECT reserva.*, cliente.nome, funcionario.nomef FROM reserva\n" +
                            "INNER JOIN cliente\n" +
                            "ON cliente_cpf = cliente.cpf\n" +
                            "INNER JOIN funcionario\n" +
                            "ON funcionario_matricula = funcionario.matricula_funcionario;";
        try {
            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {
                CadastrarReserva cadastrar = new CadastrarReserva();

                String id = rs.getString("id_reserva");
                int codigo = rs.getInt("funcionario_matricula");
                String cpf = rs.getString("cliente_cpf");
                String placa = rs.getString("automovel_placa");
                int dias = rs.getInt("dias");
                String total = rs.getString("total");
                String data = rs.getString("data");
                String status = rs.getString("status");
                String nomecli = rs.getString("nome");
                String nomefun = rs.getString("nomef");

                String matricula = Integer.toString(codigo);
                String diasR = Integer.toString(dias);

                cadastrar.setId(id);
                cadastrar.setMatricula(matricula);
                cadastrar.setCPF(cpf);
                cadastrar.setPlaca(placa);
                cadastrar.setDiaReserva(diasR);
                cadastrar.setTotal(total);
                cadastrar.setData(data);
                cadastrar.setStatus(status);
                cadastrar.setNome(nomecli);
                cadastrar.setNomef(nomefun);

                reserva.add(cadastrar);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    return reserva;
    }

    public List<CadastrarReserva> ListarReservaConfirmar() {
        List<CadastrarReserva> reserva = new ArrayList<CadastrarReserva>();

        String comando = "SELECT * FROM reserva WHERE status = 'aberto'";
        try {
            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {
                CadastrarReserva cadastrar = new CadastrarReserva();

                String id = rs.getString("id_reserva");
                int codigo = rs.getInt("funcionario_matricula");
                String cpf = rs.getString("cliente_cpf");
                String placa = rs.getString("automovel_placa");
                int dias = rs.getInt("dias");
                String total = rs.getString("total");
                String data = rs.getString("data");
                String status = rs.getString("status");

                String matricula = Integer.toString(codigo);
                String diasR = Integer.toString(dias);

                cadastrar.setId(id);
                cadastrar.setMatricula(matricula);
                cadastrar.setCPF(cpf);
                cadastrar.setPlaca(placa);
                cadastrar.setDiaReserva(diasR);
                cadastrar.setTotal(total);
                cadastrar.setData(data);
                cadastrar.setStatus(status);

                reserva.add(cadastrar);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    return reserva;
    }


    public void ExcluirFuncionario(String x){
        //delete from funcionario where matricula_funcionario = '123666';
        String comando = "DELETE FROM funcionario WHERE matricula_funcionario = ?";

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, x);

            p.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void ExcluirCliente(String x){
        //delete from funcionario where cpf = ?;
        String comando = "DELETE FROM cliente WHERE cpf = ?";

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, x);

            p.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void ExcluirAutomovel(String x){
        //delete from automovel where placa = ?;
        String comando = "DELETE FROM automovel WHERE placa = ?";

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, x);

            p.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void ExcluirReserva(String x){
        //delete from reserva where id_reserva = ?;
        String comando = "DELETE FROM reserva WHERE id_reserva = ?";

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.setString(1, x);

            p.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void AlterarFuncionario(Cadastrar cadastrar){
        String comando = "UPDATE funcionario SET nomef = ?, cpf = ?, data_nascimento = ?, email = ?, telefone = ?, sexo = ?, estado = ?, cidade = ?, bairro = ?, rua = ? where matricula_funcionario = ?";

        PreparedStatement p;
        try{
            p = this.conexao.prepareStatement(comando);

            p.setString(1, cadastrar.getNome());
            p.setString(2, cadastrar.getCPF());
            p.setString(3, cadastrar.getAno() + cadastrar.getMes() + cadastrar.getDia());
            p.setString(4, cadastrar.getEmail());
            p.setString(5, cadastrar.getTelefone());
            p.setString(6, cadastrar.getSexo());
            p.setString(7, cadastrar.getEstado());
            p.setString(8, cadastrar.getCidade());
            p.setString(9, cadastrar.getBairro());
            p.setString(10, cadastrar.getRua());
            p.setString(11, cadastrar.getMatricula());

            p.execute();
            System.out.println("Alterado!");

        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public CadastrarReserva AlterarReserva(String idreserva){

        CadastrarReserva cadastrar = new CadastrarReserva();
        //UPDATE reserva SET status = 'fechado' WHERE id_reserva = 18;
        
        String comando = "UPDATE reserva SET status = ? WHERE id_reserva = ?;";

        PreparedStatement p;
        try{
            p = this.conexao.prepareStatement(comando);
            
            p.setString(1, "fechado");
            p.setString(2, idreserva);

            p.execute();
            System.out.println("Alterado!");

        }catch(SQLException e){
            e.printStackTrace();
        }
        
    return cadastrar;
    }


    public Cadastrar BuscarFuncionario(String x){
        //Select * from funcionario where matricula_funcionario=?;

        Cadastrar funcionario = new Cadastrar();
        String comando = "select * FROM funcionario WHERE matricula_funcionario = "+x;

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.execute();

            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {

                Cadastrar cadastrar = new Cadastrar();

                int codigo = rs.getInt("matricula_funcionario");
                String nome = rs.getString("nomef");
                String cpf = rs.getString("cpf");
                Date data = rs.getDate("data_nascimento");
                String email = rs.getString("email");
                String telefone = rs.getString("telefone");
                String sexo = rs.getString("sexo");
                String estado = rs.getString("estado");
                String cidade = rs.getString("cidade");
                String bairro = rs.getString("bairro");
                String rua = rs.getString("rua");

                String matriculabusca = Integer.toString(codigo);

                cadastrar.setMatricula(matriculabusca);
                cadastrar.setNome(nome);
                cadastrar.setCPF(cpf);
                cadastrar.setData(data);
                cadastrar.setEmail(email);
                cadastrar.setTelefone(telefone);
                cadastrar.setSexo(sexo);
                cadastrar.setEstado(estado);
                cadastrar.setCidade(cidade);
                cadastrar.setBairro(bairro);
                cadastrar.setRua(rua);

                funcionario = cadastrar;
            }
        System.out.println("passou");
        }catch(SQLException e){
            e.printStackTrace();
        }
    return funcionario;
    }

    public CadastrarReserva BuscarReserva(String x){
        //Select * from funcionario where matricula_funcionario=?;

        CadastrarReserva reserva = new CadastrarReserva();
        String comando = "select * FROM reserva WHERE id_reserva = "+x;

        PreparedStatement p;
        try {
            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {
                CadastrarReserva cadastrar = new CadastrarReserva();

                String id = rs.getString("id_reserva");
                int codigo = rs.getInt("funcionario_matricula");
                String cpf = rs.getString("cliente_cpf");
                String placa = rs.getString("automovel_placa");
                int dias = rs.getInt("dias");
                String total = rs.getString("total");
                String data = rs.getString("data");
                String status = rs.getString("status");

                String matricula = Integer.toString(codigo);
                String diasR = Integer.toString(dias);

                cadastrar.setId(id);
                cadastrar.setMatricula(matricula);
                cadastrar.setCPF(cpf);
                cadastrar.setPlaca(placa);
                cadastrar.setDiaReserva(diasR);
                cadastrar.setTotal(total);
                cadastrar.setData(data);
                cadastrar.setStatus(status);

                reserva = cadastrar;

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    return reserva;
    }

    public Reserva ConfirmarReserva(String matricula, String cpf, String placa){
        //Select nomef from funcionario where matricula_funcionario=?;

        Reserva reserva = new Reserva();
        String comando = "select nomef FROM funcionario WHERE matricula_funcionario = "+matricula;

        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);
            p.execute();


            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {
                String nomef = rs.getString("nomef");

                reserva.setNomef(nomef);
                if(reserva.getNomef() != null){
                    reserva.setMatricula(matricula);
                }
            }

        }catch(SQLException e){
                e.printStackTrace();
        }

        //-------------------------------------------------------------------------------------------
        //Select nome from cliente where cpf=?;

        comando = "select nome FROM cliente WHERE cpf = "+cpf;

        try {
            p = this.conexao.prepareStatement(comando);
            p.execute();

            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {

                String nome = rs.getString("nome");
                reserva.setNome(nome);

                if(reserva.getNome() != null){
                    reserva.setCpf(cpf);
                }
            }

        }catch(SQLException e){
            e.printStackTrace();
        }

        //-------------------------------------------------------------------------------------------
        //Select * from automovel where placa =? and status != 'reservado';

        comando = "select * FROM automovel WHERE placa = '"+placa+"'  and status != 'reservado'";

        try {
            p = this.conexao.prepareStatement(comando);
            p.execute();

            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {

                String tipo = rs.getString("tipo");
                String modelo = rs.getString("modelo");
                String ano = rs.getString("ano");
                String cor = rs.getString("cor");
                String preco = rs.getString("preco");
                String chassi = rs.getString("chassi");


                reserva.setTipo(tipo);
                reserva.setModelo(modelo);
                reserva.setAno(ano);
                reserva.setCor(cor);
                reserva.setPreco(preco);
                reserva.setChassi(chassi);

                if(reserva.getTipo() != null){
                    reserva.setPlaca(placa);
                }
            }

        }catch(SQLException e){
            e.printStackTrace();
        }

        //-------------------------------------------------------------------------------------------
        //SELECT COUNT(*) FROM reserva where cliente_cpf = 12345678901;

        comando = "SELECT COUNT(*) FROM reserva where cliente_cpf = "+cpf;

        try {
            p = this.conexao.prepareStatement(comando);
            p.execute();

            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);

            while (rs.next()) {

            String tipo = rs.getString("COUNT(*)");
            System.out.println(comando);
            int tipof = Integer.parseInt(tipo);
            reserva.setConsultas(tipof);

            }

        }catch(SQLException e){
            e.printStackTrace();
        }


    return reserva;
    }


    public Usuario BuscarUsuario(Usuario usuario){
    //select * from usuario where usuario = 'root' and senha = 1234

        Usuario acesso = new Usuario();
        String comando = "select * FROM usuario WHERE usuario = '"+usuario.getUsuario()+"' and senha = '"+usuario.getSenha()+"'";


        PreparedStatement p;
        try {
            p = this.conexao.prepareStatement(comando);

            java.sql.Statement stmt = conexao.createStatement();
            java.sql.ResultSet rs = stmt.executeQuery(comando);


            while (rs.next()) {

                Usuario cadastrar = new Usuario();

                String usuarioa = rs.getString("usuario");
                String senha = rs.getString("senha");
                String nome = rs.getString("nome");
                String adm = rs.getString("adm");

                int numero = Integer.parseInt(adm);

                cadastrar.setUsuario(usuarioa);
                cadastrar.setSenha(senha);
                cadastrar.setNome(nome);
                cadastrar.setAdm(numero);


                acesso = cadastrar;
            }

        }catch(SQLException e){
                e.printStackTrace();
        }
    return acesso;
    }
        
}
