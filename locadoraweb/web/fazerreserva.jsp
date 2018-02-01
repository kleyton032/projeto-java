<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="dao.FabricaConexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.JDBCInserirFormDAO"%>
<%@page import="model.Cadastrar"%>
<%@page import="model.CadastrarAutomovel"%>
<html lang="pt-br">
    <head>
        <meta charset="utf-8"/>
        <meta name="description" content="AUTO Meu Carro - Sistema de Aluguel"/>
        <meta name="author" content="Mateus de Castro Domingos"/>
        <link rel="icon" type="image/png" href="img/icone.ico" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>AUTO MC - Fazer Reserva</title>
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

                    <li><a href="#">FAZER RESERVA</a></li>

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
            
        
        <!-- Modal funcionário -->
        <div class="modal fade" id="mymodalfuncionario">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <label>Título</label>
                    </div>

                    <div class="modal-body">
                        <label>Buscar por: </label>
                        <select id="buscar">
                            <option value="0">Matricula</option>
                            <option value="1">Nome</option>
                            <option value="2">CPF</option>
                        </select></br></br>
                        <label>Campo: </label>
                        <input id="searchTerm" type="text" />
                        <button type="button" onclick="doSearch()">Pesquisar</button>
                        </br></br>


                        <%
                            FabricaConexao fabrica = new FabricaConexao();
                            Connection conexao = fabrica.fazConexao();

                            JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);

                            java.util.List<Cadastrar> funcionario = dao.ListarFuncionario();

                            fabrica.fecharConexao();
                        %>
                        <div class="table-responsive">
                            <table id="dados" class="table-bordered table-striped">
                                <tr>
                                    <th>Matricula</th>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                </tr>

                                <%for(Cadastrar c:funcionario){%>

                                <tr onclick="teste(this)">
                                    <td> <%= c.getMatricula() %></td>
                                    <td> <%= c.getNome() %></td>
                                    <td> <%= c.getCPF() %></td>
                                </tr>
                                <% } %>

                            </table>
                        </div>
                    </div>

                    <div class="modal-footer">
                    <button type="button" data-dismiss="modal">close</button>
                    </div>
                </div>
            </div>
        </div>
                                
        <!-- Modal Cliente -->
        <div class="modal fade" id="mymodalcliente">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <label>Título</label>
                    </div>

                    <div class="modal-body">
                        <label>Buscar por: </label>
                        <select id="buscar2">
                            <option value="0">CPF</option>
                            <option value="1">Nome</option>
                        </select></br></br>
                        <label>Campo: </label>
                        <input id="searchTerm2" type="text" />
                        <button type="button" onclick="doSearch2()">Pesquisar</button>
                        </br></br>

                        <%  fabrica = new FabricaConexao();
                            conexao = fabrica.fazConexao();

                            dao = new JDBCInserirFormDAO(conexao);
                            java.util.List<Cadastrar> cliente = dao.ListarCliente();

                            fabrica.fecharConexao();
                        %>

                        <div class="table-responsive">
                            <table id="dados2" class="table-bordered table-striped">
                                <tr>
                                    <th>CPF</th>
                                    <th>Nome</th>
                                </tr>

                                <%for(Cadastrar c:cliente){%>

                                <tr onclick="teste2(this)">
                                    <td> <%= c.getCPF() %></td>
                                    <td> <%= c.getNome() %></td>
                                </tr>
                                <% } %>
                            </table>
                        </div>
                    </div>

                    <div class="modal-footer">
                    <button type="button" data-dismiss="modal">close</button>
                    </div>
                </div>
            </div>
        </div>
                            
        <!-- Modal Automóvel -->
        <div class="modal fade" id="mymodalautomovel">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <label>Título</label>
                    </div>

                    <div class="modal-body">
                        <label>Buscar por: </label>
                        <select id="buscar3">
                            <option value="0">Placa</option>
                            <option value="1">Tipo</option>
                            <option value="2">Modelo</option>
                            <option value="3">Ano</option>
                            <option value="4">Cor</option>
                            <option value="5">Preço</option>
                            <option value="6">Chassi</option>
                        </select></br></br>
                        <label>Campo: </label>
                        <input id="searchTerm3" type="text" />
                        <button type="button" onclick="doSearch2()">Pesquisar</button>
                        </br></br>

                        <%  
                            fabrica = new FabricaConexao();
                            conexao = fabrica.fazConexao();

                            dao = new JDBCInserirFormDAO(conexao);

                            java.util.List<CadastrarAutomovel> automovel = dao.ListarAutomovelDisponivel();

                            fabrica.fecharConexao();
                        %>

                        <div class="table-responsive">
                            <table id="dados3" class="table-bordered table-striped">
                                <tr>
                                    <th>Placa</th>
                                    <th>Tipo</th>
                                    <th>Modelo</th>
                                    <th>Ano</th>
                                    <th>Cor</th>
                                    <th>Preço</th>
                                    <th>Chassi</th>
                                </tr>

                                <% for (CadastrarAutomovel c : automovel){%>

                                <tr onclick="teste3(this)">
                                    <td><%=c.getPlaca()%></td>
                                    <td><%=c.getTipo()%></td>
                                    <td><%=c.getModelo()%></td>
                                    <td><%=c.getAno()%></td>
                                    <td><%=c.getCor()%></td>
                                    <td><%=c.getPreco()%></td>
                                    <td><%=c.getChassi()%></td>
                                </tr>
                                <% } %>
                            </table>
                        </div>
                    </div>

                    <div class="modal-footer">
                    <button type="button" data-dismiss="modal">close</button>
                    </div>
                </div>
            </div>
        </div>
        
        <form action="ConfirmarReserva" method="post" class="formulario" id="formulario">
            <label for="matricula">Matrícula: </label></br>
            <input class="campos" type="number" name="matricula" id=matricula placeholder="Selecione um funcionário" value="" /></br><label id="erromatricula"></label></br><!-- disabled -->
            <a href="" data-toggle="modal" data-target="#mymodalfuncionario">Consultar funcionário</a></br></br>
        
		
            <label for="nome">CPF do cliente:</label></br>
            <input class="campos" type="number" name="cpf" id="cpf" placeholder="Selecione um cliente" value="" /></br><label id="errocpf"></label></br>	
            <a href="" data-toggle="modal" data-target="#mymodalcliente">Consultar cliente</a></br></br>

            <label for="placa">Placa: </label></br>
            <input class="campos" type="text" name="placa" placeholder="AAA0000" id=placa value="" /></br><label id="erronome"></label></br>
            <a href="" data-toggle="modal" data-target="#mymodalautomovel">Consultar automóvel</a></br></br>
    	
    	
            <label for="reserva">Dias de reserva: </label></br></br>
            <label for="diareserva">Dia(s): </label>
            <select id="diareserva" name="diareserva" >
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
            </select> <br/><br/>
    
            <input class="btn-form" type="submit" class="bt" value="Cadastrar" />
            <input class="btn-form" type="reset" class="bt" value="Limpar" />
    
        </form> 
    </section>
    <footer>
        <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
    </footer>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/BuscadorTabela.js" type="text/javascript" charset="UTF-8"></script>
    <script src="js/BuscadorTabela2.js" type="text/javascript" charset="UTF-8"></script>
    <script src="js/BuscadorTabela3.js" type="text/javascript" charset="UTF-8"></script>
    <script src="js/javascriptReserva.js" type="text/javascript" charset="UTF-8"></script>
</body>
</html>