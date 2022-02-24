package controler;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import DAO.Admin;
import DAO.FileUpload;
import DAO.User;
import Modele.fileOperations;
import Modele.userOperations;


@Controller
public class aploadController {
	
	static String fileDescription;
    static FileUpload fileUploadObj;
    static String saveDirectory = "uploadedFiles";  
    static ModelAndView modelViewObj;
	
	@Autowired
	ServletContext servletContext;
	
	userOperations obj = new  userOperations();
	fileOperations fo = new fileOperations();
	
    @RequestMapping(value = "/aploadFile", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("aploadForm", "user", new User());
    }
    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String submit(@ModelAttribute("user") User  user, Model model,HttpSession ses) {
    	
    	MultipartFile 	multipartFile = user.getProfileImage();
    
    if(multipartFile != null || !multipartFile.isEmpty()) {
    	String fileName = servletContext.getRealPath("/")+"resources\\downloads\\"+ multipartFile.getOriginalFilename();
    	try {
    		
    		multipartFile.transferTo(new File(fileName));
    		
			fileUploadObj = new FileUpload();
            fileUploadObj.setFileName(multipartFile.getOriginalFilename());
            fileUploadObj.setFileDescription(user.getE_mail());
            
            
            
            fo.addfile(fileUploadObj);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    if(user.getNom().equals("user") && user.getPassword().equals("user@gmail.com")) {
    	
    	    
			return "redirect:/";
    	
    }else {
    	
    	return "user/userForm"; 
    	}
    }
    
    @GetMapping("/abc")
	public String showEspaceClient() {
		return ("index");
	}
    
    

    

}
