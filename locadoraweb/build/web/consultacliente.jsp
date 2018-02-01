<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.FabricaConexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.JDBCInserirFormDAO"%>
<%@page import="model.Cadastrar"%>

<html>
    <head>
        <meta charset="utf-8"/>
        <meta name="description" content="AUTO Meu Carro - Sistema de Aluguel"/>
        <meta name="author" content="Mateus de Castro Domingos"/>
        <link rel="icon" type="image/png" href="img/icone.ico" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>AUTO MC - Consultar Cliente</title>
    </head>
    <body>

        <header>
            <div class="navgar">
                <img src="img/logo.png"/>
                <nav>
                    <ul>
                        <li><a href="home.jsp">HOME</a></li>

                        <!-- Menu Dropdown -->
                        <li class="dropdown"><a data-toggle="dropdown" href="#">CADASTROS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropmenu" href="cadastrarfuncionario.jsp">CADASTRAR FUNCIONÁRIO</a></li>  					
                                <li><a class="dropmenu" href="cadastrarcliente.jsp">CADASTRAR CLIENTE</a></li>
                                <li><a class="dropmenu" href="cadastrarautomovel.jsp">CADASTRAR AUTOMÓVEL</a></li>  
                            </ul>
                        </li>

                        <li><a href="fazerreserva.jsp">FAZER RESERVA</a></li>

                        <!-- Menu Dropdown -->
                        <li class="dropdown"><a data-toggle="dropdown" href="#">CONSULTAS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropmenu" href="consultafuncionario.jsp">CONSULTAR FUNCIONÁRIO</a></li>
                                <li><a class="dropmenu" href="#">CONSULTAR CLIENTE</a></li>
                                <li><a class="dropmenu" href="consultaautomovel.jsp">CONSULTAR AUTOMÓVEL</a></li>
                                <li><a class="dropmenu" href="consultareserva.jsp">CONSULTAR RESERVAS</a></li>
                            </ul>
                        </li>
                        <li><a href="Sair">SAIR</a></li>
                    </ul>        
                </nav>
            </div>
        </header>

        <section>
            <h1>Consulta de Clientes</h1></br></br>

            <label>Buscar por: </label>
            <select id="buscar">
                <option value="0">CPF</option>
                <option value="1">Nome</option>
                <option value="2">Data de Nascimento</option>
            </select>
            <label>Campo: </label>
            <input class="campos" id="searchTerm" type="text" onkeyup="doSearch()" /></br></br></br>

            <%
                FabricaConexao fabrica = new FabricaConexao();
                Connection conexao = fabrica.fazConexao();

                JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);

                java.util.List<Cadastrar> cliente = dao.ListarCliente();

                fabrica.fecharConexao();
            %>

            <div class="table-responsive">
                <table id="dados" class="table-bordered table-striped">
                    <tr>
                        <th>CPF</th>
                        <th>Nome</th>
                        <th>Data de Nascimento</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Sexo</th>
                        <th>Estado</th>
                        <th>Cidade</th>
                        <th>Bairro</th>
                        <th>Rua</th>
                        <th>Excluir</th>
                    </tr>

                    <%for(Cadastrar c:cliente){%>

                    <tr>
                        <td> <%= c.getCPF() %></td>
                        <td> <%= c.getNome() %></td>
                        <td> <%= c.getData() %></td>
                        <td> <%= c.getEmail() %></td>
                        <td> <%= c.getTelefone() %></td>
                        <td> <%= c.getSexo() %></td>
                        <td> <%= c.getEstado() %></td>
                        <td> <%= c.getCidade() %></td>
                        <td> <%= c.getBairro() %></td>
                        <td> <%= c.getRua() %></td>
                        <td><a href="DeletarCliente?cpf=<%= c.getCPF() %>">Excluir</a></td>
                    </tr>
                    <% } %>
                </table>
            </div>
        </section>

        <footer>
            <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
        </footer>
        <script src="js/BuscadorTabela.js" type="text/javascript" charset="UTF-8"></script>
    </body>
</html>