package Modele;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.tomcat.util.http.fileupload.FileUpload;


import DAO.Etablissement;
import DAO.User;


public class userOperations {

	private static ConnexionBase con;
	private static Connection Connect;

	public userOperations() {
		con = new ConnexionBase();
		Connect = con.getConnection();
	}

	public String authentify(String e_mail,String pass) {
	//	boolean t = false;
		String aut = null;
		String query11="SELECT E_mail,Password,T_inscrire FROM Utilisateur";
		try {
		
		Statement st11 =Connect.createStatement();
		ResultSet re11=st11.executeQuery(query11);
		while(re11.next()) {
		
			if(re11.getString("E_mail").equals(e_mail) && re11.getString("Password").equals(pass) && aut==null) {
				
			   if(re11.getString("T_inscrire").equals("Apprenant")) {
				   aut="app";
				 
			   }else {
				   if(re11.getString("T_inscrire").equals("Formateur")) {
					   aut="for";
					  
					  
				   }else {
					   aut="no";
					 
				   }
			   }
			}
		}
	      
		}catch(Exception e) {
			System.out.println("erreur"+e);
		}
		
		 return aut; 
		 
	}

	public void addUser(String nom,String prenom,String email,String passworrd,String tel,String inscrire,String gender,String file) {
		try {
			PreparedStatement pr=Connect.prepareStatement("INSERT INTO Utilisateur(Nom,Prenom,E_mail,Password,Tel,T_inscrire,Gender,file) VALUES(?,?,?,?,?,?,?,?)");
			pr.setString(1, nom);
			pr.setString(2, prenom);
			pr.setString(3, email);
			pr.setString(4, passworrd);
			pr.setString(5, tel);
			pr.setString(6, inscrire);
			pr.setString(7, gender);
			pr.setString(8, file);
			pr.executeUpdate();
					if(inscrire.equals("Apprenant")) {
						PreparedStatement pr2=Connect.prepareStatement("INSERT INTO Apprenant(E_mail_apprenant) VALUES(?)");
			        	pr2.setString(1, email);
			        	
			         
			        	pr2.executeUpdate();
		     
				
					  }
			/*	else {
			
				if(inscrire.equals("Formateur")) {		
				
				PreparedStatement pr3=Connect.prepareStatement("INSERT INTO Formateur VALUES(?,?,?)");
				pr3.setString(1, email);
			
				pr3.setString(2, "programation");
				pr3.setString(3, file);
				
				pr3.executeUpdate();
			
				}
				}*/
				 pr.close();
			
					} catch (Exception e) {
			System.out.println("erreur0"+e);
		}
	}
	
	// get User by Id
		public User getUserById(String x) throws SQLException {
			User  U =null ;
			String readData = "select * from utilisateur where E_mail = '" + x +"'";
			Statement st = Connect.createStatement();
			 ResultSet rs = st.executeQuery(readData);
			
			while (rs.next()) {
				
				
				String Nom = rs.getString("Nom");
		        String Prenom = rs.getString("Prenom");
		        String E_mail = rs.getString("E_mail");
				String Password = rs.getString("Password");
		        String Tel = rs.getString("Tel");
				String Etab = rs.getString("Etab");
		        String Form = rs.getString("Form");
				String T_inscrire = rs.getString("T_inscrire");
		        String Gender = rs.getString("Gender");
				
		        
			
		        U= new User(Nom,Prenom,E_mail,Password,Tel,Etab,Form,T_inscrire,Gender);
			}
			return U;
		}
	
	//update les info de user
	

	public boolean updateUser(User x) {
		String query = "update utilisateur set Nom= '"+x.getNom()+"', Prenom='"+x.getPrenom()+"',E_mail='"+x.getE_mail()+"', Password='"+x.getPassword()+"',Tel='"+x.getTel()+"',Etab='"+x.getEtab()+"', Form='"+x.getForm()+"',T_inscrire='"+x.getT_inscrire()+"',Gender='"+x.getGender()+"' where E_mail='"+x.getE_mail()+"'";
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
	
	// List des apprenant
	
	public ArrayList<User> viewListAprenant() throws SQLException {
		User U ;
		ArrayList<User> list = new ArrayList<User>();
		String readData = "select * from utilisateur where T_inscrire='Apprenant'";
		Statement st = Connect.createStatement();
		 ResultSet rs = st.executeQuery(readData);
		
		while (rs.next()) {
			 
	        
	        
	    	String name = rs.getString("Nom");
	    	String Prenom = rs.getString("Prenom");
	    	String email = rs.getString("E_mail");
	    	String tel = rs.getString("Tel");
	    	String Gender = rs.getString("Gender");
	    	
	    	U = new User(name,Prenom,email,tel,Gender);
		        list.add(U);
		}
		
 
        return list;
	}
	
	// List des Formateur
	
	public ArrayList<User> viewListFormateur() throws SQLException {
		User U ;
		ArrayList<User> list = new ArrayList<User>();
		String readData = "select * from utilisateur where T_inscrire='Formateur'";
		Statement st = Connect.createStatement();
		 ResultSet rs = st.executeQuery(readData);
		
		while (rs.next()) {
			 
	        
	        
	    	String name = rs.getString("Nom");
	    	String Prenom = rs.getString("Prenom");
	    	String email = rs.getString("E_mail");
	    	String tel = rs.getString("Tel");
	    	String Gender = rs.getString("Gender");
	    	
	    	U = new User(name,Prenom,email,tel,Gender);
		        list.add(U);
		}
		
 
        return list;
	}
	
	
	public ArrayList<User> afficherUser(){
		User U ;
		Boolean f=false;
		ArrayList<User> l=new ArrayList<User>();
		String fvalid="SELECT etat from Formateur";
		try {
			Statement st32 =Connect.createStatement();
			ResultSet re32=st32.executeQuery(fvalid);
			while(re32.next()) {
				if(re32.getString("etat").equals("en_travail")) {
					f=true;
				}
			}
		}catch(Exception e) {
			System.out.println("empty"+e);
		}
		if(f==true) {
		String query22="SELECT * FROM Utilisateur where T_inscrire='Apprenant'";
		
		try {
			Statement st =Connect.createStatement();
			ResultSet re=st.executeQuery(query22);
			while(re.next()) {
				
			    String nom=re.getString("Nom");
			    String prenom=re.getString("Prenom");
				String email=re.getString("E_mail");
				String tel=re.getString("Tel");
				String etab=re.getString("Etab");
				String form=re.getString("Form");
				String gender=re.getString("Gender");
				 U =new User(nom,prenom,email, tel,etab,form,gender);
				l.add(U);
			}
			 re.close();
			 st.close();
			
		}catch(Exception e) {
			System.out.println("erreur");
		}
		return l;
	}else {
		System.out.println("No etude");
		return null;
	}}
	
	//Update etat de apprenant 
	public void updateEtatAp(String ap) {
		String upd="UPDATE Apprenant SET etat='valide' WHERE E_mail_apprenant= '"+ap+"'";
		PreparedStatement st = null;
	
		try {
			
			st = this.Connect.prepareStatement(upd);
			st.executeUpdate();
			
			st.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//delete apprenant
	public void deleteApp(String apd) {
		String del="DELETE FROM Apprenant WHERE  E_mail_apprenant='"+apd+"'" ;
         PreparedStatement st;
		
		try {
			
			 
			 st = Connect.prepareStatement(del);
			 
		     st.executeUpdate();
		     String del1="DELETE FROM Utilisateur WHERE  E_mail='"+apd+"'" ;
	         PreparedStatement st1;
             st1 = Connect.prepareStatement(del1);
			 
		     st1.executeUpdate();
	         
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
  
	//Update etat de  formation proposer
	public void UpEtatform(int ID_F) {
	String upF="UPDATE Formation SET etat='valide' WHERE Id_formation= '"+ID_F+"'";
	PreparedStatement st = null;

	try {
		
		st = this.Connect.prepareStatement(upF);
		st.executeUpdate();
		st.close();
		
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
	//delete formation proposer
		public void deleteForm(int id_f) {
			String delf="DELETE FROM Formation WHERE  Id_formation='"+id_f+"'" ;		
	         PreparedStatement st;		
			try { 
				 st = Connect.prepareStatement(delf);
                 st.executeUpdate();
			 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	
}
