package controler;


import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import DAO.User;
import DAO.Emploi;
import DAO.Etablissement;
import DAO.FileUpload;
import DAO.Formation;
import Modele.userOperations;
import Modele.emploiOperations;
import Modele.etablissementOperations;
import Modele.fileOperations;
import Modele.formationOperations;

@Controller
public class LoginController {
	
	
	// modele
	formationOperations frm = new formationOperations();
	userOperations obj = new  userOperations();
	fileOperations fo = new fileOperations();
	etablissementOperations etb = new etablissementOperations();
	emploiOperations emp2=new emploiOperations();
  
	
	
	
    @RequestMapping("/")   
    public String showDataCommande(@ModelAttribute("formation") Formation formation,@ModelAttribute("etablissement") Etablissement etablissement,ModelMap m) throws SQLException {
    	
    	
    	ArrayList<Formation> l1 = frm.viewAll();
    	ArrayList<Etablissement> l2 = etb.viewEcolesValide();
    	ArrayList<Emploi> listE = emp2.afficheEmploi();
    	
    	m.addAttribute("list1",l1);
    	m.addAttribute("list2",l2);
    	m.addAttribute("listE",listE);
        
        return "home";
}
    
    @RequestMapping("/Logout")   
    public String showLougout(@ModelAttribute("formation") Formation formation,Model m,HttpSession session) throws SQLException {
    	
    	session.invalidate() ;
    	ArrayList<Formation> l = frm.viewAll();
        
        m.addAttribute("list",l);
        return "redirect:/";
}
	
	
	
	
    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("user/userForm", "user", new User());
    }
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String submit(@ModelAttribute("formation") Formation formation,@ModelAttribute("user") User  user, Model model,HttpSession ses) throws SQLException {
    	

   String ch=obj.authentify(user.getE_mail(),user.getPassword());
    	
   
    if(ch=="app") {
    User u=	obj.getUserById(user.getE_mail());
    	
     addUserInSession(u, ses);
   
	 return "redirect:/"; 
	
    }else{if(ch=="for") {
    	 User u=	obj.getUserById(user.getE_mail());
         addUserInSession(u, ses);
    	 user.setE_mail("");
    	 user.setPassword("");
    	return "redirect:/listet";
    	
    }
    else {
    	 user.setE_mail("");
    	 user.setPassword("");
    	return "user/userForm";
    	
    
    	}
    }
    }
    // register user in data base
    
    
    @RequestMapping(value = "/AddUser", method = RequestMethod.POST)
    public String register(@ModelAttribute("formation") Formation formation,@ModelAttribute("user") User  user, Model model,HttpSession ses) throws SQLException {
    	
    	obj.addUser(user.getNom(), user.getPrenom(), user.getE_mail(),user.getPassword(),user.getTel(),user.getT_inscrire(),user.getGender(),user.getFile()); 
    	addUserInSession(user, ses);
    	if(user.getT_inscrire().equals("Apprenant")) { 
    		
			return "home";
    	}else { 
    	   if(user.getT_inscrire().equals("Formateur")) {
    		
    		  addUserInSession(user, ses);
    		return "redirect:/listet";}
    	else { 
    		return "user/userForm";
    	}
    	}
    }
    
    //get info user
    
    @RequestMapping(value="/editUser/{email}")
    public String edit(@PathVariable String email, Model m) throws SQLException{
        User user = obj.getUserById(email);
        m.addAttribute("command" , user);
        return "editUser";
    }
    
    /* It updates model object. */    
    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("user") User user){
    	obj.updateUser(user);
		
        return "redirect:/";
    }
    
    // redirct form payment
    
    @RequestMapping(value="/payment")
    public String payment(){
       
        return "user/paymentForm";
    }
    
    public void addUserInSession(User u,HttpSession session){
	   	session.setAttribute("User", u);
	   	session.setAttribute("nom", u.getNom());
	   	session.setAttribute("email", u.getE_mail());
	   	session.setAttribute("Pass", u.getPassword());
	   }
    
 }
