package DAO;

public class Admin {
	
	private String nom;
	private String prenom;
	private String email;
	private String motpasse;
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMotpasse() {
		return motpasse;
	}
	public void setMotpasse(String motpasse) {
		this.motpasse = motpasse;
	}
	
	public Admin() {
		
		
	}
	public Admin(String nom, String prenom, String email, String motpasse) {
		
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.motpasse = motpasse;
	}
	
	
	
	
	
}
