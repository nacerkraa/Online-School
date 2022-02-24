package Modele;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DAO.Admin;


public class adminOperations {

	private static ConnexionBase con;
	private static Connection Connect;

	public adminOperations() {
		con = new ConnexionBase();
		Connect = con.getConnection();
	}

	public boolean authentify(Admin x) {
		String query = "select * from admine where nom_admin = ? and motPass = ?";
		PreparedStatement st = null;
		ResultSet r = null;
		boolean b=false;
		try {
			st = this.Connect.prepareStatement(query);
			st.setString(1, x.getNom());
			st.setString(2, x.getMotpasse());

			r = st.executeQuery();
			if (r.next())
				b = true;
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
	// pour update 
	public boolean cheakAdmin(Admin x) {
		String query = "select * from admine where nom_admin = ? and prenom_admin = ? and email_admin = ? and motPass = ?";
		PreparedStatement st = null;
		ResultSet r = null;
		boolean b=false;
		try {
			st = this.Connect.prepareStatement(query);
			st.setString(1, x.getNom());
			st.setString(2, x.getPrenom());
			st.setString(3, x.getEmail());
			st.setString(4, x.getMotpasse());

			r = st.executeQuery();
			if (r.next())
				b = true;
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}

	public boolean addAdminInDB(Admin x) {
		String query = "insert into admins(email, nom, prenom, password) values (?, ?, ?, ?)";
		PreparedStatement st = null;
		int r = 0;
		boolean b= false;
		try {
			if(!authentify(x)) {
			st = this.Connect.prepareStatement(query);
			st.setString(1, x.getEmail());
			st.setString(2, x.getNom());
			st.setString(3, x.getPrenom());
			st.setString(4, x.getMotpasse());
			
			r = st.executeUpdate();
			st.close();
			b=true;
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return b;
	}
	
	//modifier compte
	// get User by Id
	public Admin getAdminById(String x) throws SQLException {
		Admin  A=null ;
		String readData = "select * from admine where nom_admin = '" + x +"'";
		Statement st = Connect.createStatement();
		 ResultSet rs = st.executeQuery(readData);
		
		while (rs.next()) {
			
			
			String Nom = rs.getString("nom_admin");
	        String Prenom = rs.getString("prenom_admin");
	        String Email = rs.getString("email_admin");
			String Password = rs.getString("motPass");
	        
	        A = new Admin(Nom,Prenom,Email,Password);
		}
		return A;
	}

//update les info de user


public boolean updateAdmin(Admin x) {
	String query = "update admine set email_admin= '"+x.getEmail()+"', prenom_admin='"+x.getPrenom()+"', motPass ='"+x.getMotpasse()+"' where nom_admin='"+x.getNom()+"'";
	
	PreparedStatement st = null;
	int r = 0;
	boolean b= false;
	try {
		if(!cheakAdmin(x)) {
		st = this.Connect.prepareStatement(query);
		r = st.executeUpdate();
		st.close();
		b=true;
	}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return b;
}
	}

