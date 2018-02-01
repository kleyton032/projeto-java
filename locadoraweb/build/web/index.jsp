<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style type="text/css">body{background-image:url("img/site-background.jpg");color: white;}header{width: 100%;height: 100px;background: #838B8B;	}#logo{margin-top: 20px;margin-left: 10%;}section{width:400px;height:200px;	margin-top: 100px;margin-left: auto;margin-right: auto;}input{width: 400px;height: 33px;color: #000000;}.campos{padding: 10px;}#lbllogin{font-size: 20px;font-weight: bold;color: #8B8989;padding: -10px;}.btn-logar{background: #BEBEBE;color: #000;border-color: #CDC9C9;}.btn-logar:focus{background: #CDC9C9;olor: #BEBEBE;}#submit{width: 150px;}footer{margin-top: 150px;width: 100%;height: 100px;background: #4A708B;color: #fff;text-align: center;padding: 15px;}#rodape p{margin-top: 30px;}</style>
<title>AUTO Meu Carro - Login</title>
</head>
<body>
	<header>
		<img id="logo" src="img/logo.png" />
	</header>
   
   
   <section>
		<div id="login">
			<form action="Autenticar" class="formulario" id="formulario" method="post" >
		        <label id="lbllogin"> Login </label>
				
				<input class="campos" type="text" name="usuario" id=usuario value="" placeholder="Usuário" /></br></br>
				<input class="campos" TYPE="password" name="senha" id=senha value="" placeholder="Senha"></br></br>
				<input class="btn-logar" id="submit" type="submit" class="btn-primary" value="Entrar" />
				
	       </form>
		</div>
   </section>
	<footer>
           <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
   </footer>
</body>
</html>