package controler;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DAO.Emploi;
import Modele.emploiOperations;
import Modele.etablissementOperations;

@Controller
public class damandemploiController {
	
	emploiOperations emp2=new emploiOperations();
	etablissementOperations at1=new etablissementOperations();
	  @RequestMapping(value = "/emplpr")
		public String showLou(@ModelAttribute("emploi") Emploi emploi,ModelMap mo) throws SQLException {
	    
	    	ArrayList<Emploi> listE = emp2.afficheEmploi();
	    	ArrayList<Emploi> listEtem = emp2.showEtabEmploi();
	        mo.addAttribute("listE",listE);
	        mo.addAttribute("lism",listEtem);
	        return "Emploi/emploi_possible";
	}

	
	 @RequestMapping(value = "/emplpr1", method = RequestMethod.GET)
	    public ModelAndView showdemanprp() {
	        return new ModelAndView("Emploi/emploi_possible", "emploi", new Emploi());
	    }
	  
	
	  @RequestMapping(value = "/dmnd", method = RequestMethod.POST)
	    public String register12(@ModelAttribute("emploi") Emploi emploi,Model model2) throws SQLException {

	    	emp2.demandemploi(emploi.getId_offer(),emploi.getEmail_etab(),emploi.getEmail_frm());
	    	return "redirect:/emplpr";
}
	 

}
