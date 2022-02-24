package Modele;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import DAO.Formation;
import DAO.User;
import Modele.ConnexionBase;

public class formationOperations {
	private static ConnexionBase con;
	private static Connection Connect;

	public formationOperations() {
		con = new ConnexionBase();
		Connect = con.getConnection();
	}


	public ArrayList<Formation> viewAll() throws SQLException {
		Formation f ;
		ArrayList<Formation> list = new ArrayList<Formation>();
		String readData = "select * from formation";
		Statement st = Connect.createStatement();
		 ResultSet rs = st.executeQuery(readData);
		
		while (rs.next()) {
			 
	        
	        String name = rs.getString("nom_form");
	    	
	    	String niveau = rs.getString("niveau");
	    	String description = rs.getString("description_form");
	    	
	    	 f= new Formation(name,niveau,description);
		        list.add(f);
		}
		
 
        return list;
	}
	
	
	public void addformation(String nom,String niveau,String description,String email,String EMail) {
		try {
			boolean b=false;
			String quar="SELECT E_mail_formateur FROM Formateur WHERE etat='en_travail' ";
			Statement st12 =Connect.createStatement();
			ResultSet re11=st12.executeQuery(quar);
	
			while(re11.next()) {
				if(re11.getString("E_mail_formateur").equals(email)) {
					b=true;
				}
			}
			
			if(b==true) {
				int ID;
			PreparedStatement pst=Connect.prepareStatement("INSERT INTO Formation (nom_form,niveau,description_form)VALUE(?,?,?)");
			
			pst.setString(1,nom);
			pst.setString(2,niveau);
			pst.setString(3, description);
			pst.executeUpdate();
			 Statement sl=Connect.createStatement();
			 ResultSet st=sl.executeQuery("SELECT Id_formation FROM Formation WHERE nom_form='"+nom+"'");
			 while(st.next()) {
				  ID= st.getInt("Id_formation");
				  
				  PreparedStatement pst1=Connect.prepareStatement("INSERT INTO ProposeFormation ( E_mail_formateur_nv,Id_formation,email_Etab)VALUE(?,?,?)");
					
					pst1.setString(1, email);
					pst1.setInt(2, ID);
					pst1.setString(3, EMail);
					pst1.executeUpdate();
			 }
            
			
			}else {
				System.out.println("You not a formateur");
			}
		}catch(Exception e) {
			System.out.println("erreur"+e);
		}
	}
	public ArrayList<Formation> showformPropose(){
		String Etat="nonvalide";
		ArrayList<Formation> list = new ArrayList<Formation>();
		String Data = "SELECT * FROM Formation WHERE  etat='nonvalide'";
		System.out.println("connect4");
		try {
		Statement st3 = Connect.createStatement();
		 ResultSet rs3 = st3.executeQuery(Data);
		 System.out.println("connect5");
		 while(rs3.next()) {
			Formation fr=new Formation();
			fr.setId_formation(rs3.getInt("Id_formation"));
			fr.setName(rs3.getString("nom_form"));
			fr.setNiveau(rs3.getString("niveau"));
			fr.setPrix(rs3.getInt("prix"));
			fr.setDescription(rs3.getString("description_form"));
			list.add(fr);
			
		 }
		 rs3.close();
		 st3.close();
	}catch(Exception e) {
		System.out.println("erreur"+e);
	}
		return list;
}
	
public ArrayList<Formation> showPropose(){
		
		ArrayList<Formation> lis = new ArrayList<Formation>();
		
		String Data = "SELECT * FROM ProposeFormation";
		
		try {
		Statement st4 = Connect.createStatement();
		 ResultSet rs4 = st4.executeQuery(Data);
		
		 while(rs4.next()) {
			Formation fr=new Formation();
			fr.setE_mail_formateur(rs4.getString("E_mail_formateur"));
			fr.setId_formation(rs4.getInt("Id_formation"));
			lis.add(fr);
		 }
		 rs4.close();
		 st4.close();
	}catch(Exception e) {
		System.out.println("erreur"+e);
	}
		return lis;
}

}