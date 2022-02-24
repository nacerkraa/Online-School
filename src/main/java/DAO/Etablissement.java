package DAO;

public class Etablissement {

		

		
		
		private String nom;
		
		private String email;
		
		private String pass;
		
		private String adress;
		
		
		
		private String desc;
		
		private String etat;

		


		public String getNom() {
			return nom;
		}

		public void setNom(String nom) {
			this.nom = nom;
		}

		public String getAdress() {
			return adress;
		}

		public void setAdress(String adress) {
			this.adress = adress;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}
		
		

		public String getPass() {
			return pass;
		}

		public void setPass(String pass) {
			this.pass = pass;
		}

		public String getDesc() {
			return desc;
		}

		public void setDesc(String desc) {
			this.desc = desc;
		}

		public String getEtat() {
			return etat;
		}

		public void setEtat(String etat) {
			this.etat = etat;
		}
		
        public Etablissement() {
			
		
		}
        
        
		

		public Etablissement(String nom, String email, String adress, String desc) {
			super();
			this.nom = nom;
			this.email = email;
			this.adress = adress;
			this.desc = desc;
		}

		public Etablissement(String nom, String email, String pass, String adress, String desc) {
			
			this.nom = nom;
			this.email = email;
			this.pass = pass;
			this.adress = adress;
			this.desc = desc;
		}

		public Etablissement(String nom, String adress, String email, String pass, String desc, String etat) {
			
		
			this.nom = nom;
			this.adress = adress;
			this.email = email;
			this.pass = pass;
			this.desc = desc;
			this.etat = etat;
		}
	}

