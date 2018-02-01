<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="dao.FabricaConexao"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.JDBCInserirFormDAO"%>
<%@page import="model.CadastrarAutomovel"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Consultas de automóveis</title>
<link href="css/estilo_config.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%
		FabricaConexao fabrica = new FabricaConexao();
		Connection conexao = fabrica.fazConexao();

		JDBCInserirFormDAO dao = new JDBCInserirFormDAO(conexao);

		java.util.List<CadastrarAutomovel> automovel = dao.ListarAutomovelDisponivel();

		fabrica.fecharConexao();
	%>
	<table id="tabela" class="tabela">

		<tr>
			<th>Placa</th>
			<th>Tipo</th>
			<th>Modelo</th>
			<th>Ano</th>
			<th>Cor</th>
			<th>Preço</th>
			<th>Chassi</th>
			<th>Quilometragem</th>
		</tr>

		<%
			for (CadastrarAutomovel c : automovel) {
		%>

		<tr>
			<td><%=c.getPlaca()%></td>
			<td><%=c.getTipo()%></td>
			<td><%=c.getModelo()%></td>
			<td><%=c.getAno()%></td>
			<td><%=c.getCor()%></td>
			<td><%=c.getPreco()%></td>
			<td><%=c.getChassi()%></td>

		</tr>

		<%
			}
		%>

	</table>
	<button class="bt-consulta" onclick="window.close();">Voltar</button>

</body>
</html>