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
        <title>AUTO MC - Home</title>
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
            <form action="InserirFormUsuario" method="post" class="formulario" id="formulario">

                <label for="usuario">Usuário: </label></br>
                <input class="campos" type="text" name="usuario" placeholder="Exemplo" id=usuario value=""/></br></br>

                <label for="senha">Senha: </label></br>
                <input class="campos" type="password" name="senha" placeholder="Exemplo" id=senha value=""/></br></br>

                <label for="nome">Nome: </label></br>
                <input class="campos" type="text" name="nome" placeholder="Exemplo" id="nome" value=""/></br></br>

                <label for="adm">Adm: </label></br>
                <select id="adm" name="adm">
                        <option value="1">Sim</option>
                        <option value="2">Não</option>

                </select></br></br>

                <input class="btn-form" type="submit" class="bt" value="Cadastrar" />
                <input class="btn-form" type="reset" class="bt" value="Limpar" />

            </form>
        </section>

            <footer>
                <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
            </footer>
       
    </body>
</html>