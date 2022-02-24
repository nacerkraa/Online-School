package controler;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DAO.User;
import DAO.Emploi;
import DAO.Etablissement;
import Modele.userOperations;
import Modele.adminOperations;
import Modele.etablissementOperations;

@Controller
public class EtablissementController {
	
	static ModelAndView modelViewObj;
	
	userOperations usr = new userOperations();
	etablissementOperations etb = new etablissementOperations();
	adminOperations obj = new  adminOperations();
	
	// logIn etablissement
    @RequestMapping(value = "/etab", method = RequestMethod.GET)
    public ModelAndView showForm( Model model) throws SQLException {
    	
        return new ModelAndView("etablissement/etabForm", "etablissement", new Etablissement());
    }
    
    @RequestMapping(value = "/addEtab", method = RequestMethod.POST)
    public String Login(@ModelAttribute("user") User user,@ModelAttribute("etablissement") Etablissement etablissement, Model map,HttpSession ses) throws SQLException {
    	
    	
    
    	
    if(etb.authentify(etablissement)) {
    	addUserInSession(etablissement, ses);
    	
    	
    	
    	return "redirect:/list";
    	}else {
    		
    		return "etablissement/etabForm";
    		}
    }
    
    
	// add etablissement
	
	   @RequestMapping(value = "/singup", method = RequestMethod.GET)
	    public ModelAndView showFormEtab() {
	        return new ModelAndView("etablissement/signup", "etablissement", new Etablissement());
	    }
	   
    @RequestMapping(value = "/AddEtabInDB", method = RequestMethod.POST)
    public ModelAndView register(@ModelAttribute("etablissement") Etablissement etablissement, Model model,HttpSession ses) throws SQLException {
    	

    if(!etb.authentify(etablissement)) {
    
    	etb.addEtab(etablissement);
    	addUserInSession(etablissement, ses);
			modelViewObj = new ModelAndView("view","messageObj","Thank You! Your Demmande Has Been Sent!");
			return  modelViewObj;	
    	
    }else {
    	
    	 return new ModelAndView("etablissement/signup");
    	
    
    	}
    }
	
	
	//Delete etablissement
	@RequestMapping(value="/delete/{nom}",method = RequestMethod.GET)
	public String  deleteProducts(@PathVariable("nom") String nom){
		etb.supById(nom);
		
		
		return "redirect:/listetab";
	}

	
    @RequestMapping("/listetab")   
    public String showDataCommande(@ModelAttribute("etablissement") Etablissement etablissement,ModelMap map) throws SQLException {
    	
    	ArrayList<Etablissement> lnv = etb.viewAll();
    	int nombreEcolesNonValide = lnv.size();
    	
    	ArrayList<Etablissement> l = etb.viewAll();
    	map.addAttribute("list",l);
    	
    	map.addAttribute("nombreEcolesNonValide", nombreEcolesNonValide);
    	
    		return "admin/dashboard";
		      
        }

    // valider letab
    
    @RequestMapping(value="/valideEtab/{nom}")
    public String editEttabl(@PathVariable String nom, Model m) throws SQLException{
    	
        etb.updateEtab(nom);
        return "redirect:/listetab";
    }
    
    public void addUserInSession(Etablissement a,HttpSession session){
	   	session.setAttribute("Etab", a);
	   	session.setAttribute("nom", a.getNom());
	   	session.setAttribute("email", a.getEmail());
	   	
	   }
    
    // modifer compte etablissement
    //get info admin
    
    @RequestMapping(value="/modiferCompteEtab/{nom}")
    public String edit(@PathVariable String nom, Model m) throws SQLException{
    	
    	Etablissement etablissement = etb.getEtabById(nom);
        m.addAttribute("command" , etablissement);
        return "/etablissement/editEtab";
    }
    
    /* It updates model object. */    
    @RequestMapping(value="/editsaveEtab",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("etablissement") Etablissement etablissement){
    	etb.updateEtab(etablissement);
		
        return "redirect:/list";
    }
    
    // lougout from session 
    @RequestMapping("/LogoutEtab")   
    public String showLougout(@ModelAttribute("etablissement") Etablissement etablissement, Model m,HttpSession session) throws SQLException {
    	
    	session.invalidate() ;
    
        return "redirect:/";
}
    
    // list Formateur
    // lougout from session 
  /*  @RequestMapping("/listF")   
    public String showDataF(@ModelAttribute("user") User user,ModelMap map) throws SQLException {
    	
    	
 
	    	ArrayList<User> l = usr.viewListFormateur();
	    	map.addAttribute("list",l);
    	
    	
    		return "etablissement/dashboard";
		      
        }*/
    
    
    // dashboard eatblissement
    @RequestMapping(value = "/list")
	public String showLou(@ModelAttribute("emploi") Emploi emploi,Model mo) throws SQLException {
    
    	ArrayList<Emploi> listcon = etb.showCondidat();
        mo.addAttribute("lism3",listcon);
        return "etablissement/dashboard";
            
}
    
    // valid etat demmande
    @RequestMapping(value="/validedmd/{E_mail_formateur}")
    public String editEttab(@PathVariable String E_mail_formateur, Model m) throws SQLException{
    	
    	etb.UpEtatdemand(E_mail_formateur);
        return "redirect:/list";
    }
	
    
    // delete demmande
    @RequestMapping(value="/deletedmd/{E_mail_formateur}",method = RequestMethod.GET)
	public String  deleteProduct(@PathVariable("E_mail_formateur") String E_mail_formateur ){
    	etb.deletedemand(E_mail_formateur);
		
		
		return "redirect:/list";
	} 
}
