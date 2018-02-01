<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.FabricaConexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.JDBCInserirFormDAO"%>
<%@page import="model.CadastrarReserva"%>

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
                                <li><a class="dropmenu" href="consultacliente.jsp">CONSULTAR CLIENTE</a></li>
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
            <h1>Consulta de Reservas</h1></br></br>
            
            <label>Cassificar por: </label>
            <input type="radio" name="tipo" value="0" checked/> <label>Todas</label>
            <input type="radio" name="tipo" value="aberto"/> <label>Abertas</label>
            <input type="radio" name="tipo" value="fechado"> <label>Fechadas</label></br></br>
            
            <label>Buscar por:</label>
            <select id="buscar">
                <option value="0">ID Reserva</option>
                <option value="1">Matrícula</option>
                <option value="2">Nome funcionário</option>
                <option value="3">CPF</option>
                <option value="4">Nome Cliente</option>
                <option value="5">Placa</option>
            </select>
            <label>Campo: </label>
            <input class="campos" id="searchTerm" type="text" onkeyup="doSearch()" /></br></br></br>

            
            <%
                FabricaConexao fabrica = new FabricaConexao();
                Connection conexao = fabrica.fazConexao();

                JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);

                java.util.List<CadastrarReserva> reserva = dao.ListarReserva();

                fabrica.fecharConexao();
            %>
            
            <div class="table-responsive">
                <table id="dados" class="table-bordered table-striped">
                    <tr>
                        <th>ID Reserva</th>
                        <th>Matrícula</th>
                        <th>Nome Funcionário</th>
                        <th>CPF</th>
                        <th>Nome Cliente</th>
                        <th>Placa</th>
                        <th>Total</th>
                        <th>Data</th>
                        <th>Dias de reserva</th>
                        <th>Status</th>
                        <th>Fechar Reserva</th>
                        <th>Excluir</th>
                    </tr>

                    <%for(CadastrarReserva c:reserva){%>

                    <tr>
                        <td> <%= c.getId() %></td>
                        <td> <%= c.getMatricula() %></td>
                        <td> <%= c.getNomef() %></td>
                        <td> <%= c.getCPF() %></td>
                        <td> <%= c.getNome() %></td>
                        <td> <%= c.getPlaca() %></td>
                        <td> <%= c.getTotal() %></td>
                        <td> <%= c.getData() %></td>
                        <td> <%= c.getDiaReserva() %></td>
                        <td> <%= c.getStatus() %></td>
                        <td> <%if(c.getStatus().length() == 7) {%><label>-</label></br> 
                        <%}else{%><a href="AlterarReservaTeste?idreserva=<%= c.getId() %>">Fechar</a><%}%></td>
                        <td><a href="DeletarReserva?IDReserva=<%= c.getId() %>">Excluir</a></td>
                    </tr>

                    <% } %>
                </table>
            </div>
        </section>
        
        <footer>
            <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
        </footer>
        <script src="js/BuscadorTabelaReserva.js" type="text/javascript" charset="UTF-8"></script>
    </body>
</html>