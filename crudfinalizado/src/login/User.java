package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class User {
	public Connection conectarBD() {
		Connection conn = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudfinalizado", "root", "");

		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
		
		
	}
	
	public String nome="";
	public boolean result = false;
	public boolean verificarUsuario(String nome, String password) {
		String sql = "";
		Connection conn = conectarBD();
		//Instrução SQL
		sql += "select nome from usuario ";
		sql += "where nome = " + "'" + nome + "'";
		sql += " and password = " + "'" + password + "';";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()) {
				result = true;
				nome = rs.getString("nome");}
		}catch(Exception e) {}
		return result;}
//fim da classe	
			
		
	}
	


