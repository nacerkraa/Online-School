package controler;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import DAO.Emploi;
import DAO.Etablissement;
import DAO.Formation;
import DAO.User;
import Modele.emploiOperations;
import Modele.userOperations;


@Controller
public class FormateurController {
	
	emploiOperations emp=new emploiOperations();
	userOperations frm = new userOperations();
    @RequestMapping("/listet")   
    public String showDataCommande(@ModelAttribute("user") User user,Model m) throws SQLException {
    	
    	
    	ArrayList<User> l = frm.afficherUser();
        
        m.addAttribute("us",l);
        return "formateur/dashformateur";
}
    @RequestMapping(value="/valideAp/{E_mail}")
    public String editEttab(@PathVariable String E_mail, Model m) throws SQLException{
    	
        frm.updateEtatAp(E_mail);
        return "formateur/dashformateur";
    }
	

    @RequestMapping(value="/deleteAp/{E_mail}",method = RequestMethod.GET)
	public String  deleteProduct(@PathVariable("E_mail") String E_mail ){
		frm.deleteApp(E_mail);
		
		
		return "formateur/dashformateur";
	} 
    
    
	/* private  userOperations obj ;
	 @RequestMapping(value = "/AddUser", method = RequestMethod.GET)
	 public String cosulte(Model model) {
	 	//ClientOperation obj=new ClientOperation();
	 	
	 	ArrayList<User> l=obj.afficherUser();//new ArrayList<Menu>();
	 //l=obj.consulterMenu();

	 model.addAttribute("us", l); 
	 return "formateur/formateurDash";
	 }*/
    
    // modifier compte formateur
    
    @RequestMapping(value="/modiferCompteFormateur")
	public String  modifierCompte(){
		
		
		
		return "formateur/formateurForm";
	} 
    
  }
    

