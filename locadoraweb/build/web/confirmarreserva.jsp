<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.FabricaConexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.JDBCInserirFormDAO"%>
<%@page import="model.Reserva"%>
<html lang="pt-br">
<head>
    <meta charset="utf-8"/>
        <meta name="description" content="AUTO Meu Carro - Sistema de Aluguel"/>
        <meta name="author" content="Mateus de Castro Domingos"/>
        <link rel="icon" type="image/png" href="img/icone.ico" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>AUTO MC - Confirmar Reserva</title>
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
            <h1>Confirmar reserva</h1><br/><br/>
            <% 
            Reserva reserva = (Reserva)request.getAttribute("reserva");
            int x = 0;
            %>

            <label class="negrito">Nome do cliente: </label></br>
            <%if(reserva.getCpf()!= null){ %>
            <label class="norm"><%=reserva.getNome()%></label></br></br>
            <%}else{ %>
            <label class="norm">Cliente inexistente</label></br></br>
            <%x = 1;}%>

            <label>Placa do automóvel: </label></br>
            <%if(reserva.getPlaca()!= null){ %>
            <label class="norm"><%=reserva.getPlaca()%></label></br></br>

            <label>Tipo do automóvel: </label></br>
            <label class="norm"><%=reserva.getTipo()%></label></br></br>

            <label>Ano do automóvel: </label></br>
            <label class="norm"><%=reserva.getModelo()%></label></br></br>

            <label>Cor do automóvel: </label></br>
            <label class="norm"><%=reserva.getCor()%></label></br></br>

            <label>Chassi do automóvel: </label></br>
            <label class="norm"><%=reserva.getChassi()%></label></br></br>

            <label>Preço da reserva: </label></br>
            <label class="norm"><%=reserva.getPreco()%></label></br></br>
            <%}else{ %>
            Automóvel inexistente</br></br>
            <%x = 1;}%>

            <label class="negrito">Nome do funcionário: </label></br>
            <%if(reserva.getNomef()!= null){ %>
            <label class="norm"><%=reserva.getNomef()%></label></br></br>
            <%}else{ %>
            <label class="norm">Funcionário inexistente</label></br></br>
            <%x = 1;}%>


            <!-- InserirFormCliente?nome=Mateus&cpf=11206026456&dia=01&mes=01&ano=2016&email=vitor.decastro.domingos%40gmail.com&tel=6547823165&sexo=m&estado=Acre&cidade=asdfasdf&bairro=%E7%E7%E7%E7%E7&rua=rrrr -->
            <%if(x == 0){ %>
            <a class="btn-conf" href="InserirFormReserva?matricula=<%= reserva.getMatricula() %>&cpf=<%= reserva.getCpf() %>&placa=<%= reserva.getPlaca() %>&diareserva=<%= reserva.getDia() %>&total=<%= reserva.getPreco() %>">Cadastrar Reserva</a>
            <a class="btn-conf" href="fazerreserva.jsp">Voltar</a>
            <%}else{ %>
            <a class="btn-conf" href="fazerreserva.jsp">Voltar</a>
            <%} %>

        </section>
            
        <footer>
            <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
        </footer>

    </body>
</html>