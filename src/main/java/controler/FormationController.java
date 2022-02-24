package controler;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import DAO.Formation;
import Modele.formationOperations;

@Controller
public class FormationController {

	formationOperations frm = new formationOperations();
    @RequestMapping("/List")   
    public String showDataCommande(@ModelAttribute("formation") Formation formation,Model m) throws SQLException {
    	
    	
    	ArrayList<Formation> l = frm.viewAll();
        
        m.addAttribute("list",l);
        return "ListFormation";
}
}
