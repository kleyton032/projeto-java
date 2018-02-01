<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.FabricaConexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.JDBCInserirFormDAO"%>
<%@page import="model.CadastrarAutomovel"%>
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
                                <li><a class="dropmenu" href="#">CONSULTAR AUTOMÓVEL</a></li>
                                <li><a class="dropmenu" href="consultareserva.jsp">CONSULTAR RESERVAS</a></li>
                            </ul>
                        </li>
                        <li><a href="Sair">SAIR</a></li>
                    </ul>        
                </nav>
            </div>
        </header>

        <section>
            <h1>Consulta de Automóveis</h1></br></br>
            
            <label>Cassificar por: </label>
            <input type="radio" name="tipo" value="0" checked/> <label>Todos</label>
            <input type="radio" name="tipo" value="66"/> <label>Disponível</label>
            <input type="radio" name="tipo" value="63"> <label>Reservado</label></br></br>
            
            <label>Buscar por: </label>
            <select id="buscarauto">
                <option value="1">Placa</option>
                <option value="2">Tipo</option>
                <option value="3">Modelo</option>
                <option value="4">Ano</option>
                <option value="5">Cor</option>
                <option value="6">Preço</option>
                <option value="7">Chassi</option>
            </select>
            <label>Campo: </label>
            <input class="campos" id="searchTermauto" type="text" onkeyup="doSearch()" /></br></br></br>

            
            <%
                FabricaConexao fabrica = new FabricaConexao();
                Connection conexao = fabrica.fazConexao();

                JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);

                java.util.List<CadastrarAutomovel> automovel = dao.ListarAutomovel();

                fabrica.fecharConexao();
            %>

            <div class="table-responsive">
                <table id="dadosauto" class="table-bordered table-striped">
                    <tr>
                        <th>Status</th>
                        <th>Placa</th>
                        <th>Tipo</th>
                        <th>Modelo</th>
                        <th>Ano</th>
                        <th>Cor</th>
                        <th>Preço</th>
                        <th>Chassi</th>
                        <th>Excluir</th>
                    </tr>

                    <%
                            for (CadastrarAutomovel c : automovel) {
                    %>

                    <tr>
                        <%if(c.getStatus().length() == 10) {%>
                            <td class="imgtd"><img alt='disponível' title='disponível' src='img/disponivel.png'></td>
                        <%}else{%>
                            <td class="imgtd"><img alt="Reservado" title="Reservado" src="img/reservado.png"/></td>
                        <%} %>
                        
                        <td><%=c.getPlaca()%></td>
                        <td><%=c.getTipo()%></td>
                        <td><%=c.getModelo()%></td>
                        <td><%=c.getAno()%></td>
                        <td><%=c.getCor()%></td>
                        <td><%=c.getPreco()%></td>
                        <td><%=c.getChassi()%></td>
                        <td><a href="DeletarAutomovel?placa=<%= c.getPlaca() %>">Excluir</a></td>
                    </tr>
                    <% } %>
                </table>
            </div>
        </section>
                        
                
                
        <footer>
            <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
        </footer>
        <script src="js/BuscadorTabelaAutomovel.js" type="text/javascript" charset="UTF-8"></script>
    </body>
</html>