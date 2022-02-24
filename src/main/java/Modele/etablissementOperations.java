package Modele;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DAO.Admin;
import DAO.Emploi;
import DAO.Etablissement;
import DAO.User;
import Modele.ConnexionBase;

public class etablissementOperations {
	private static ConnexionBase con;
	private static Connection Connect;

	public etablissementOperations() {
		con = new ConnexionBase();
		Connect = con.getConnection();
	}
	
	public boolean authentify(Etablissement x) {
		String query = " select * from etablisement where  nom_etab=? and email=? and motpasse = ? and etat ='valide'";
		PreparedStatement st = null;
		ResultSet r = null;
		boolean b=false;
		try {
			st = this.Connect.prepareStatement(query);
			st.setString(1, x.getNom());
			st.setString(2, x.getEmail());
			st.setString(3, x.getPass());
			

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
	

	public boolean addEtab(Etablissement x) {
		String query = "insert into etablisement(nom_etab, adresse , email ,motpasse, escription ) values (?, ?, ?, ?, ?)";
		PreparedStatement st = null;
		int r = 0;
		boolean b= false;
		try {
			if(!authentify(x)) {
				
			st = this.Connect.prepareStatement(query);
			st.setString(1, x.getNom());
			st.setString(2, x.getAdress());
			st.setString(3, x.getEmail());
			st.setString(4, x.getPass());
			st.setString(5, x.getDesc());

			
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
	
	// list of etablissement nonvalide
	public ArrayList<Etablissement> viewAll() throws SQLException {
		Etablissement E ;
		ArrayList<Etablissement> list = new ArrayList<Etablissement>();
		String readData = "select * from etablisement where etat = 'nonvalide' ";
		Statement st = Connect.createStatement();
		 ResultSet rs = st.executeQuery(readData);
		
		while (rs.next()) {
			 
	        
	       
	    	String name = rs.getString("nom_etab");
	    	String email = rs.getString("email");
	    	String adress = rs.getString("adresse");
	    	String description = rs.getString("escription");
	    	
	    	
	    	 E = new Etablissement(name,email,adress,description);
		        list.add(E);
		}
		
 
        return list;
	}
	
	// list of etablissement valide
	
	public ArrayList<Etablissement> viewEcolesValide() throws SQLException {
		Etablissement E ;
		ArrayList<Etablissement> list = new ArrayList<Etablissement>();
		String readData = "select * from etablisement where etat ='valide'";
		Statement st = Connect.createStatement();
		 ResultSet rs = st.executeQuery(readData);
		
		while (rs.next()) {
			 
	        
	      
	    	String name = rs.getString("nom_etab");
	    	String description = rs.getString("escription");
	    	String email = rs.getString("email");
	    	String adress = rs.getString("adresse");
	    	String etat = rs.getString("etat");
	    	
	    	 E = new Etablissement(name,adress,email,description,etat);
		        list.add(E);
		}
		
 
        return list;
	}
	
	// Delete by Id
	public void supById(String x) {
		String query = "DELETE FROM etablisement WHERE email = '" + x+"'";
		PreparedStatement st = null;
		
		try {
			
			 
			 st = Connect.prepareStatement(query);
			 
			int rowsDeleted = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		

	//valider l'etablissement
	public boolean updateEtab(String x) {
		String query = "update etablisement set etat = 'valide' where email='"+x+"'";
		PreparedStatement st = null;
		int r = 0;
		boolean b= false;
		try {
			
			st = this.Connect.prepareStatement(query);
			r = st.executeUpdate();
			st.close();
			b=true;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return b;
	}
	
	//modifier compte
	// get User by Id
	public Etablissement getEtabById(String x) throws SQLException {
		Etablissement  E=null ;
		String readData = "select * from etablisement where nom_etab = '" + x +"'";
		Statement st = Connect.createStatement();
		 ResultSet rs = st.executeQuery(readData);
		
		while (rs.next()) {
			
			
			String Nom = rs.getString("nom_etab");
	        String adresse = rs.getString("adresse");
	        String Email = rs.getString("email");
			String pass = rs.getString("motpasse");
			String description = rs.getString("escription");
			
	        
	        E = new Etablissement(Nom,Email,pass,adresse,description);
		}
		return E;
	}

//update les info de etablissement


public boolean updateEtab(Etablissement x) {
	String query = "update etablisement set escription = '"+x.getDesc()+"',email='"+x.getEmail()+"', adresse='"+x.getAdress()+"', motpasse ='"+x.getPass()+"' where nom_etab='"+x.getNom()+"'";
	
	PreparedStatement st = null;
	int r = 0;
	boolean b= false;
	try {
		
		st = this.Connect.prepareStatement(query);
		r = st.executeUpdate();
		st.close();
		b=true;
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return b;
}

	// show demmande condidat
	public ArrayList<Emploi> showCondidat(){
		ArrayList<Emploi> listcon = new ArrayList<Emploi>();
		String rest="SELECT E_mail_formateur ,Id_offre FROM Formateur WHERE etat='en_demande'";
		try {
			Statement ret=Connect.createStatement();
			ResultSet res=ret.executeQuery(rest);
	
			while(res.next()) {
				 Emploi em3=new Emploi();
				
				 String em_fr=res.getString("E_mail_formateur");
				 int id_of= res.getInt("Id_offre");
				 String rest2="SELECT * FROM Utilisateur WHERE E_mail='"+em_fr+"'";
			
			 try {
				 Statement ret2=Connect.createStatement();
				 ResultSet res2=ret2.executeQuery(rest2);
				 
					while(res2.next()) {
						Emploi us1=new Emploi();
						String nom_f=res2.getString("Nom");
						String pre_f=res2.getString("Prenom");
						String aim_f=res2.getString("E_mail");
						String tel_f=res2.getString("Tel");
						String gen_f=res2.getString("Gender");
						String fil_f=res2.getString("file");
						us1=new Emploi(nom_f,pre_f,aim_f,tel_f,gen_f,fil_f,id_of);
						listcon.add(us1);
					}
			 }catch(Exception e) {}
		}
	}catch(Exception e) {}
	return listcon;
}

//Update etat de  formation proposer
	public void UpEtatdemand(String em_F) {
	String upF1="UPDATE Formateur SET etat='en_travail' WHERE E_mail_formateur= '"+em_F+"'";
	PreparedStatement st05 = null;

	try {
		
		st05 = this.Connect.prepareStatement(upF1);
		st05.executeUpdate();
		st05.close();
		
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
	//delete formation proposer
		public void deletedemand(String em_f) {
			String delf01="DELETE FROM Formateur WHERE  E_mail_formateur='"+em_f+"'" ;		
	         PreparedStatement st01;		
			try { 
				 st01 = Connect.prepareStatement(delf01);
               st01.executeUpdate();
			 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
	}


