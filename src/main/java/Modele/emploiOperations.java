package Modele;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import DAO.Emploi;
import DAO.User;

public class emploiOperations {

	private static ConnexionBase con;
	private static Connection Connect;

	public emploiOperations() {
		con = new ConnexionBase();
		Connect = con.getConnection();
	}
	
	public void addEmploi(int id,String mail,String type,String description,String date_d,String date_f,int salary) {
		String quemp="INSERT INTO OffreEmploi(Id_offre,type_offre,description_emp,Salary,date_deb,date_fin)VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement pre=Connect.prepareStatement(quemp);
            pre.setInt(1, id);		
			pre.setString(2, type);
			pre.setString(3, description);
			
			pre.setInt(4, salary);
			pre.setString(5, date_d);
			
			pre.setString(6, date_f);
			
			pre.executeUpdate();
		/*	String quee="SELECT Id_offre FROM OffreEmploi ";
			Statement sd=Connect.createStatement();
			ResultSet rd=sd.executeQuery(quee);
			while(rd.next()) {
				 int id = rd.getInt("Id_offre");
				 String in2="INSERT INTO EtabEmploi VALUES(?,?)";
				 PreparedStatement pd=Connect.prepareStatement(in2);
				 pd.setString(1, mail);
				 pd.setInt(2, id);
				 
				 pd.executeUpdate();
			}*/
			String insoros="INSERT INTO EtabEmploi VALUES (?,?)";
			PreparedStatement pre01=Connect.prepareStatement(insoros);
            pre01.setString(1, mail);		
			pre01.setInt(2, id);
			pre01.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("errreur"+e);
		}
	}
	public ArrayList<Emploi> afficheEmploi(){
	
		ArrayList<Emploi> listEmp=new ArrayList<Emploi>();
		String requet="SELECT * FROM OffreEmploi";
	
		try {
			
		Statement st54 = Connect.createStatement();
		 ResultSet rs54 = st54.executeQuery(requet);
		 while(rs54.next()) {
			 Emploi em=new Emploi();
			 em.setId_offer(rs54.getInt("Id_offre"));
			 em.setType_emp(rs54.getString("type_offre"));
			 em.setDescription(rs54.getString("description_emp"));
			 em.setDate_deb(rs54.getString("date_deb"));
			 em.setDate_fin(rs54.getString("date_fin"));
			 em.setSalary(rs54.getInt("Salary"));
			 listEmp.add(em);
		     }
		 
		 rs54.close();
		 st54.close();
		
		}catch(Exception e) {
			 System.out.println("erreur"+e);
			 }
      return listEmp;		 
}
	
	public boolean updateEmploi(int id_em,String date_fi,int salar) {
		String query = "update OffreEmploi set date_fin= '"+date_fi+"', Salary='"+salar+"' where Id_offre='"+id_em+"'";
		PreparedStatement st74 = null;
		int r69 = 0;
		boolean b= false;
		try {
			
			st74 = this.Connect.prepareStatement(query);
			r69 = st74.executeUpdate();
			st74.close();
			b=true;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return b;
	}
	
	public void deleteEmp(int emid) {
		String dele="DELETE FROM OffreEmploi WHERE  Id_offre='"+emid+"'" ;
         PreparedStatement st;
		
		try {
			
			 
			 st = Connect.prepareStatement(dele);
			 
		     st.executeUpdate();
		    
	         
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void demandemploi(int id_emp,String email_fr,String email_et) {
		String inf_frm="SELECT file FROM Utilisateur WHERE E_mail= '"+email_fr+"'";

		
		try {
			Statement inff = Connect.createStatement();
			 ResultSet rsinf = inff.executeQuery(inf_frm);
			
			 while(rsinf.next()) {
				 String file_fr=rsinf.getString("file");
				
			String domfrm="SELECT type_offre FROM OffreEmploi WHERE Id_offre= '"+id_emp+"'";
			try {
				
				Statement domf = Connect.createStatement();
				 ResultSet rsdom = domf.executeQuery(domfrm);
				
				 while(rsdom.next()) {
					 String domain=rsdom.getString("type_offre");
				
					 String insinf="INSERT INTO Formateur(E_mail_formateur,Id_offre,domaine,email_eta,file) VALUES(?,?,?,?,?) ";
					 try {
						
							PreparedStatement preinf=Connect.prepareStatement(insinf);
						
							preinf.setString(1, email_fr);
				            preinf.setInt(2, id_emp);
				         
				            preinf.setString(3, domain);
				            preinf.setString(4, email_et);
				          
				            preinf.setString(5, file_fr);
				          
				            preinf.executeUpdate();
				            
				     }catch(Exception e) {
				    	// System.out.println("jfjf"+e);
				     }
				
				 }}catch(Exception e) {
					 //System.out.println("kjlk"+e);
			}
				 
			
			 }	 
		}catch(Exception e) {
			 System.out.println("dfd"+e);
		}
		
	}
	
	
	public ArrayList<Emploi> showEtabEmploi(){
		ArrayList<Emploi> listEtm=new ArrayList<Emploi>();
		String requet="SELECT * FROM EtabEmploi";
		try {
			Statement st55 = Connect.createStatement();
			 ResultSet rs55 = st55.executeQuery(requet);
			 while(rs55.next()) {
				 Emploi em2=new Emploi();
				 em2.setId_offer(rs55.getInt("Id_offre"));
				 em2.setEmail_etab(rs55.getString("email"));
				 listEtm.add(em2);
			 }
			 rs55.close();
			 st55.close();
		}catch(Exception e) {}
		return listEtm;
	}
}