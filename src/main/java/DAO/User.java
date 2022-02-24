package DAO;

import org.springframework.web.multipart.MultipartFile;

public class User{
		
		private MultipartFile profileImage;
	
		 private String E_mail;	
	 

		 private String Nom;

		 private String Prenom;
		
		 
		 
		 private String Password;
		 

		 private String Tel;
		 

		 private String Etab;
		 

		 private String Form;
		 
		
		 private String T_inscrire;
		 
		 private String Gender;
		 
		 
		 private String file;
		 private String etat; 
		 
		 private int Id;
		 
		 private String CV;
		 
		


		public int getId() {
			return Id;
		}









		public void setId(int id) {
			Id = id;
		}









		public String getCV() {
			return CV;
		}









		public void setCV(String cV) {
			CV = cV;
		}









			public String getEtat() {
			return etat;
		}









		public void setEtat(String etat) {
			this.etat = etat;
		}









			public String getFile() {
			return file;
		}









		public void setFile(String file) {
			this.file = file;
		}









			public User() {
				
			
			}
			
			
			






			public User(String nom, String prenom, String e_mail, String tel, String gender) {
				
				Nom = nom;
				Prenom = prenom;
				E_mail = e_mail;
				Tel = tel;
				Gender = gender;
				
			}

			public User(String nom, String prenom, String e_mail, String tel, String gender,String cv,int id) {
				
				Nom = nom;
				Prenom = prenom;
				E_mail = e_mail;
				Tel = tel;
				Gender = gender;
				CV=cv;
			    Id=id;
			}
			
			
			

	public User(String nom, String prenom, String e_mail, String tel,String etab,String form, String gender) {
				
				Nom = nom;
				Prenom = prenom;
				E_mail = e_mail;
				Tel = tel;
				Etab=etab;
				Form=form;
				Gender = gender;
			}
	


			public User(String nom, String prenom, String e_mail, String password, String tel, String etab, String form,
					String t_inscrire, String gender) {
				super();
				Nom = nom;
				Prenom = prenom;
				E_mail = e_mail;
				Password = password;
				Tel = tel;
				Etab = etab;
				Form = form;
				T_inscrire = t_inscrire;
				Gender = gender;
			}









			public String getNom() {
				return Nom;
			}





			public void setNom(String nom) {
				Nom = nom;
			}





			public String getPrenom() {
				return Prenom;
			}





			public void setPrenom(String prenom) {
				Prenom = prenom;
			}





			public String getE_mail() {
				return E_mail;
			}





			public void setE_mail(String e_mail) {
				E_mail = e_mail;
			}





			public String getPassword() {
				return Password;
			}





			public void setPassword(String password) {
				Password = password;
			}





			public String getTel() {
				return Tel;
			}





			public void setTel(String tel) {
				Tel = tel;
			}





			public String getEtab() {
				return Etab;
			}





			public void setEtab(String etab) {
				Etab = etab;
			}





			public String getForm() {
				return Form;
			}





			public void setForm(String form) {
				Form = form;
			}





			public String getT_inscrire() {
				return T_inscrire;
			}





			public void setT_inscrire(String t_inscrire) {
				T_inscrire = t_inscrire;
			}





			public String getGender() {
				return Gender;
			}





			public void setGender(String gender) {
				Gender = gender;
			}

			
			public MultipartFile getProfileImage() {
				return profileImage;
			}

			public void setProfileImage(MultipartFile profileImage) {
				this.profileImage = profileImage;
			}
		
		 
		 
		}


