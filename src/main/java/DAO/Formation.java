package DAO;

public class Formation {
	private int Id_formation;
	private String E_mail_formateur;
	
	private String email;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getE_mail_formateur() {
		return E_mail_formateur;
	}
	public void setE_mail_formateur(String e_mail_formateur) {
		E_mail_formateur = e_mail_formateur;
	}
	public int getId_formation() {
		return Id_formation;
	}
	public void setId_formation(int id_formation) {
		Id_formation = id_formation;
	}
	private String name;
	private String description;
	
	private String niveau;
	
	private String E_mail;
	
	private int Prix;
	
	public int getPrix() {
		return Prix;
	}
	public void setPrix(int prix) {
		Prix = prix;
	}
	public String getE_mail() {
		return E_mail;
	}
	public void setE_mail(String e_mail) {
		E_mail = e_mail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getNiveau() {
		return niveau;
	}
	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}
	
	
	public Formation(String name, String niveau, String description,String email) {
		
		this.name = name;
		this.description = description;
		this.niveau = niveau;
		this.E_mail=email;
	}
	
public Formation(String name, String niveau, String description) {
		
		this.name = name;
		this.description = description;
		this.niveau = niveau;
	}
public Formation() {
	// TODO Auto-generated constructor stub
}

	
	
	
	
	
}
