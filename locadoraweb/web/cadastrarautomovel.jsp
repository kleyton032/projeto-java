<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
    <head>
        <meta charset="utf-8"/>
        <meta name="description" content="AUTO Meu Carro - Sistema de Aluguel"/>
        <meta name="author" content="Mateus de Castro Domingos"/>
        <link rel="icon" type="image/png" href="img/icone.ico" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>AUTO MC - Cadastrar Automovel</title>
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
                                <li><a class="dropmenu" href="#">CADASTRAR AUTOMÓVEL</a></li>  
                            </ul>
                        </li>

                        <li><a href="fazerreserva.jsp">FAZER RESERVA</a></li>

                        <!-- Menu Dropdown -->
                        <li class="dropdown"><a data-toggle="dropdown" href="#">CONSULTAS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropmenu" href="consultafuncionario.jsp">CONSULTAR FUNCIONÁRIO</a></li>
                                <li><a class="dropmenu" href="consultacliente.jsp">CONSULTAR CLIENTE</a></li>
                                <li><a class="dropmenu" href="consultaautomovel.jsp">CONSULTAR AUTOMÓVEL</a></li>
                                <li><a class="dropmenu" href="consultareserva.jsp">CONSULTAR RESERVA</a></li>
                            </ul>
                        </li>
                        <li><a href="Sair">SAIR</a></li>
                    </ul>        
                </nav>
            </div>
        </header>
    
        <section>
            <h1>Cadastro de Autómovel</h1></br></br>
            
            <form action="InserirFormAutomovel" method="post" class="formulario" id="formulario">
                <label for="placa">Placa: </label></br>
                <input class="campos" type="text" name="placa" placeholder="AAA0000" id=placa value=""/></br><label id="erroplaca"></label></br>

                <label for="tipo">Tipo: </label></br>
                <select id="tipo" name="tipo">
                    <option value="Popular">Popular</option>
                    <option value="Luxo">Luxo</option>
                    <option value="Utilitario">Utilitário</option>
                </select></br></br>

                <label for="modelo">Modelo: </label></br>
                <input class="campos" type="text" name="modelo" placeholder="Exemplo" id=modelo value=""/></br><label id="erromodelo"></label></br>

                <label for="ano">Ano: </label></br>
                <select id="ano" name="ano">
                    <option value="2017">2017</option>
                    <option value="2016">2016</option>
                    <option value="2015">2015</option>
                    <option value="2014">2014</option>
                    <option value="2013">2013</option>
                    <option value="2012">2012</option>
                    <option value="2011">2011</option>
                    <option value="2010">2010</option>
                    <option value="2009">2009</option>
                    <option value="2008">2008</option>
                    <option value="2007">2007</option>
                    <option value="2006">2006</option>
                    <option value="2005">2005</option>
                </select></br></br>

                <label for="cor">Cor: </label></br>
                <input class="campos" type="text" name="cor" id=cor placeholder="Exemplo" value=""/></br><label id="errocor"></label></br>

                <label for="preco">Preço da diária: </label></br></br>
                <label>RS </label> <input type="number" name="preco" id=preco placeholder="00" value=""/> <label>,00 </label></br><label id="erropreco"></label></br>

                <label for="chassi">Chassi: </label></br>
                <input class="campos" type="text" name="chassi" id=chassi placeholder="xxxxxxxxxxxxxxxxx" value=""/></br><label id="errochassi"></label></br>

                <input class="btn-form" type="submit" class="bt" value="Cadastrar" />
                <input class="btn-form" type="reset" class="bt" value="Limpar" />

            </form>
            
            

            

        </section>
        <footer>
            <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
        </footer>
    <script type="text/javascript" src="js/javascriptAutomovel.js" charset="UTF-8"></script>
    </body>
</html>