<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.FabricaConexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.JDBCInserirFormDAO"%>
<%@page import="model.CadastrarReserva"%>
<html lang="pt-br">
    <head>
        <meta charset="utf-8"/>
        <meta name="description" content="AUTO Meu Carro - Sistema de Aluguel"/>
        <meta name="author" content="Mateus de Castro Domingos"/>
        <link rel="icon" type="image/png" href="img/icone.ico" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>AUTO MC - Alterar Reserva</title>
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
        CadastrarReserva reserva = (CadastrarReserva)request.getAttribute("reserva");

        %>

            <label class="negrito">ID Reserva: </label></br>
            <%=reserva.getId()%></br></br>

            <label class="negrito">Matrícula: </label></br>
            <%=reserva.getMatricula()%></br></br>

            <label>CPF do cliente: </label></br>
            <%=reserva.getCPF()%></br></br>
            
            <label>Placa: </label></br>
            <%= reserva.getPlaca()%></br></br>
            
            <% 
                double i = Double.parseDouble(reserva.getTotal());
                double d = Double.parseDouble(reserva.getDiaReserva());
                double preco = i/d;            
            %>
            
            <label>preço da diária do veículo: </label></br>
            <%=preco%></br></br>
            
            <label>Dia da reserva: </label></br>
            <%=reserva.getData()%></br></br>
            
            <label>Selecione a quantidade de dias da reserva: </label></br>
            <%=reserva.getDiaReserva()%><br/><br/>
            
            <a class="btn-conf" href="AlterarReserva?idreserva=<%=reserva.getId()%>">Fechar Reserva</a>
            <a class="btn-conf" href="consultareserva.jsp">Voltar</a>
            
        </section>
        <footer>
            <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
        </footer>

    </body>
</html>