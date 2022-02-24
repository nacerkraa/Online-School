package controler;


import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import DAO.Admin;
import DAO.User;
import DAO.Etablissement;
import DAO.Formation;

import Modele.userOperations;
import Modele.adminOperations;
import Modele.etablissementOperations;

@Controller
public class AdminController {
	
	
	userOperations uo = new userOperations();
	etablissementOperations etb = new etablissementOperations();
	adminOperations obj = new  adminOperations();
	
	// redirect pages
	 @RequestMapping("/stat")
    public String redirectToStatistique(ModelMap map) throws SQLException {
		 
		 ArrayList<Etablissement> lnv = etb.viewAll();
		ArrayList<Etablissement> l = etb.viewEcolesValide();
		ArrayList<User> l2 = uo.viewListAprenant();
		ArrayList<User> l3 = uo.viewListFormateur();
		
		int nombreEcolesNonValide = lnv.size();
    	int nombreDemmandeEcoles = l.size();
    	int nombreApprenant = l2.size();
    	int nombreFormateur = l3.size();
    	
    	
    	 map.addAttribute("nombreEcolesNonValide", nombreEcolesNonValide);
    	  map.addAttribute("totalEcoles", nombreDemmandeEcoles);
    	  map.addAttribute("nombreApprenant", nombreApprenant);
    	  map.addAttribute("nombreFormateur", nombreFormateur);
    	
        return ("admin/statistique");
    }

		
	
	// login Admin
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("admin/adminForm", "admin", new Admin());
    }
    
    @RequestMapping(value = "/addAdmin", method = RequestMethod.POST)
    public String Login(@ModelAttribute("admin") Admin  admin,@ModelAttribute("etablissement") Etablissement etablissement, ModelMap map,HttpSession ses) throws SQLException {
    	addUserInSession(admin, ses);
    	ArrayList<Etablissement> l = etb.viewAll();
    	int nombreEcolesNonValide = l.size();	
    	
    	map.addAttribute("nombreEcolesNonValide", nombreEcolesNonValide);
    	map.addAttribute("list",l);
    	
    if(obj.authentify(admin)) {
     
     
    	return "admin/dashboard";
    	}else {
    		admin.setNom("");
    		admin.setMotpasse("");
    		return "admin/adminForm";
    		
    		}
    }
    
    // modifer compte
    //get info admin
    
    @RequestMapping(value="/editAdmin/{nom}")
    public String edit(@PathVariable String nom, Model m) throws SQLException{
    	
        Admin admin = obj.getAdminById(nom);
        m.addAttribute("command" , admin);
        return "/admin/modiferCompte";
    }
    
    /* It updates model object. */    
    @RequestMapping(value="/editsaveAdmin",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("admin") Admin admin){
    	obj.updateAdmin(admin);
		
        return "redirect:/listetab";
    }
    
    
    
    public void addUserInSession(Admin a,HttpSession session){
	   	session.setAttribute("User", a);
	   	session.setAttribute("nom", a.getNom());
	   	session.setAttribute("pass", a.getMotpasse());
	   	session.setAttribute("email", a.getEmail());
	   	
	   }
    
    // lougout from session 
    @RequestMapping("/LogoutAdmin")   
    public String showLougout(@ModelAttribute("formation") Formation formation,Model m,HttpSession session) throws SQLException {
    	
    	session.invalidate() ;
    
        return "redirect:/admin";
}
    
      
    
 }
