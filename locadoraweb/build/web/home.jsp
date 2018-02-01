<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="model.Usuario"%>
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
                    <li><a href="#">HOME</a></li>
                    
                    <!-- Menu Dropdown -->
                    <li class="dropdown"><a data-toggle="dropdown" href="#">CADASTROS</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropmenu" href="cadastrarfuncionario.jsp">CADASTRAR FUNCION�RIO</a></li>			
                            <li><a class="dropmenu" href="cadastrarcliente.jsp">CADASTRAR CLIENTE</a></li>
                            <li><a class="dropmenu" href="cadastrarautomovel.jsp">CADASTRAR AUTOM�VEL</a></li>  
                        </ul>
                    </li>
                    
                    <li><a href="fazerreserva.jsp">FAZER RESERVA</a></li>
                    
                    <!-- Menu Dropdown -->
                    <li class="dropdown"><a data-toggle="dropdown" href="#">CONSULTAS</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropmenu" href="consultafuncionario.jsp">CONSULTAR FUNCION�RIO</a></li>
                            <li><a class="dropmenu" href="consultacliente.jsp">CONSULTAR CLIENTE</a></li>
                            <li><a class="dropmenu" href="consultaautomovel.jsp">CONSULTAR AUTOM�VEL</a></li>
                            <li><a class="dropmenu" href="consultareserva.jsp">CONSULTAR RESERVAS</a></li>
                        </ul>
                    </li>
                    <li><a href="Sair">SAIR</a></li>
                </ul>        
            </nav>
	</div>
    </header>
	
        
    <section>
        <%
		Usuario usuarioConf = (Usuario)session.getAttribute("usuarioConf");
		%>
        <h1>Seja bem vindo(a), <%=usuarioConf.getUsuario() %></h1></br>
		
        <img class="imgtxt" src="img/empresa.JPG"/>
        <p><strong>Quem somos?</strong></br></br>

                Somos uma produtora de conte�do. Simples assim!</br>
                Aqui, o neg�cio � m�o na massa para produzir textos para blogs, sites, redes sociais, relat�rios, manuais, cat�logos, revistas. Enfim, tudo que puder ser transformado em texto pode ser feito pela Casa do Texto!
                Somos especialistas em Conte�do Institucional e Marketing de Conte�do. Uma equipe de redatores experientes para transformar em texto as informa��es e estrat�gias de comunica��o da sua empresa.</br></br></br>

                <strong>Nossa equipe</strong></br></br>

                Uma turma de jornalistas e redatores com expertise em SEO e apura��o. Dizemos que somos bipolares, porque temos alma de marketing e sangue de reportagem.
                Texto in�ditos, com a linguagem que o seu p�blico entende. E se o seu p�blico precisar de um assunto bem espec�fico, n�o se preocupe. Em nosso time temos redatores de sa�de, finan�as, direito, neg�cios, beleza. O que sua empresa faz, de um jeito que o seu p�blico consegue entender. </br></br></br>

                <strong>Nossa hist�ria</strong></br></br>

                Nascemos em uma tarde de chuva, com duas redatoras pensando o que fazer da vida, e muitas empresas querendo textos para sites. Esse era o nosso primeiro objetivo.
                Com o tempo, muitos outros trabalhos vieram, hoje temos mais de 100 clientes e muitos deles se tornaram amigos. Aqui j� teve de tudo: manuais, cat�logos, folders, sites, blogs, redes sociais. E temos orgulho de ver muitos clientes crescerem com a ajuda dos nossos textos.
                De �duasquipe�, passamos a um time super competente de redatores. Gente que deixa o texto fluir leve, coeso, coerente e claro, por mais complexo que seja o assunto.
                Venha nos conhecer e fique tranquilo! Aqui, voc� est� em Casa.
        </p>
        
        <%if(usuarioConf.getAdm() == 1) {%>
        <h2>Apenas para administradores</h2></br>
        <a href="cadastrarusuario.jsp">CADASTRAR USU�RIO</a>
        <%} %>
    </section>
    
    <!-- Rodap� -->
    <footer>
            <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
    </footer>
    
</body>
</html>