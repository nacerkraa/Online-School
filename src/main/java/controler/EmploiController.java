package controler;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DAO.Emploi;

import Modele.emploiOperations;

@Controller
public class EmploiController {


	emploiOperations emp=new emploiOperations();
	@RequestMapping(value = "/empl")
	public String showLou(@ModelAttribute("emploi") Emploi emploi,Model mo) throws SQLException {
    
    	ArrayList<Emploi> listE = emp.afficheEmploi();
    	
        mo.addAttribute("listE",listE);
       
        return "Emploi/Tableemploi2";
}
	  @RequestMapping(value = "/empl1", method = RequestMethod.GET)
	    public ModelAndView showForm() {
	        return new ModelAndView("Emploi/Tableemploi2", "emploi", new Emploi());
	    }
	  
	
	  @RequestMapping(value = "/addemp", method = RequestMethod.POST)
	    public String register(@ModelAttribute("emploi") Emploi emploi,Model model) throws SQLException {

	    	emp.addEmploi(emploi.getId_offer(),emploi.getEmail_etab() ,emploi.getType_emp(),emploi.getDescription(),emploi.getDate_deb(),emploi.getDate_fin(),emploi.getSalary());
	    	return "redirect:/empl";
}
	
	    @RequestMapping(value = "/mdfemp", method = RequestMethod.POST)
	    public String editEttab(@ModelAttribute("emploi") Emploi emploi,Model mode) throws SQLException{
	    	
	        emp.updateEmploi(emploi.getId_offer(),emploi.getDate_fin(),emploi.getSalary());
	        return "redirect:/empl";
	    }
		

	    @RequestMapping(value = "/delemp", method = RequestMethod.POST)
		public String  deleteEmp(@ModelAttribute("emploi") Emploi emploi,Model mod ){
			emp.deleteEmp(emploi.getId_offer());
			
			
			return "redirect:/empl";
		} 
	
	   
	  
}
