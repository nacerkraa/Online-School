package DAO;

public class Emploi {
	 
private int id_offer;
 private String Type_emp;
 private String Description;
 private String Date_deb;
 private String Date_fin;
 private String Email_etab;
 private int Salary;
 private String Email_frm;
 
public String getEmail_frm() {
	return Email_frm;
}
public void setEmail_frm(String email_frm) {
	Email_frm = email_frm;
}
public int getId_offer() {
		return id_offer;
	}
public void setId_offer(int id_offer) {
		this.id_offer = id_offer;
	} 
 
public int getSalary() {
	return Salary;
}
public void setSalary(int salary) {
	Salary = salary;
}
public Emploi() {
}

public String getEmail_etab() {
	return Email_etab;
}
public void setEmail_etab(String email_etab) {
	Email_etab = email_etab;
}
public String getType_emp() {
	return Type_emp;
}
public void setType_emp(String type_emp) {
	Type_emp = type_emp;
}
public String getDescription() {
	return Description;
}
public void setDescription(String description) {
	Description = description;
}
public String getDate_deb() {
	return Date_deb;
}
public void setDate_deb(String date_deb) {
	Date_deb = date_deb;
}
public String getDate_fin() {
	return Date_fin;
}
public void setDate_fin(String date_fin) {
	Date_fin = date_fin;
}

private String Nom;
private String Prenom;

private String Tel;
private String Gender;
private String file;

public String getNom() {
	return Nom;
}
public void setNom(String nom) {
	Nom = nom;
}
public String getPrenom() {
	return Prenom;
}

public String getTel() {
	return Tel;
}
public void setTel(String tel) {
	Tel = tel;
}
public String getGender() {
	return Gender;
}
public void setGender(String gender) {
	Gender = gender;
}
public String getFile() {
	return file;
}
public void setFile(String file) {
	this.file = file;
}
public Emploi(String nom_f, String pre_f, String aim_f, String tel_f, String gen_f, String fil_f, int id_of) {
	Nom=nom_f;Prenom=pre_f;Email_frm=aim_f;Tel=tel_f;Gender=gen_f;file=fil_f;id_offer=id_of;
	
}
}
