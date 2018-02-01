package dao;

import java.sql.Connection;

public class FabricaConexao {
	private java.sql.Connection conexao;
	
	public Connection fazConexao(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conexao = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/banco_locadora", "root", "1234");
			System.out.println("conexção feita");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return conexao;
	}
	
	public void fecharConexao(){
		try{
			conexao.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
}
