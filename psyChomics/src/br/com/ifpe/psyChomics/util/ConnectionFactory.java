package br.com.ifpe.psyChomics.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public Connection getConnection() throws SQLException {
		String nomeBanco = "PC";
		String usuario = "root";
		String senha = "ifpe1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/" + nomeBanco, usuario, senha);
	}
}