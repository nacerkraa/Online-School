package Modele;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionBase {
	public static final String Host="jdbc:mysql://localhost:3306/";
	public static final String DB_Name="memoire_bd";
	public static final String USERNAME= "root";
	public static final String PASSWORD="123456789";
	
	private static Connection connect=null;
	public ConnexionBase() {
		try {
			connect= DriverManager.getConnection("jdbc:mysql://localhost:3306/memoire_bd?useUnicode=true&characterEncoding=UTF-8&&serverTimezone=GMT", USERNAME, PASSWORD);
		}
		catch (SQLException e) {
			System.out.println("Driver Manager Erreur "+e);
		}
	}
	
	public static Connection getConnection() {
		if (connect ==null) {
			new ConnexionBase();
		}
		return connect;
	}
}

