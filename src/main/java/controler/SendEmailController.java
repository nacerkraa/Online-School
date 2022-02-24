package controler;

import java.io.IOException;
import java.io.InputStream;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SendEmailController {

	static String emailToRecipient, emailSubject, emailMessage;
	static final String emailFromRecipient = "nacer.tech97@gmail.com";

	static ModelAndView modelViewObj;

	@Autowired
	private JavaMailSender mailSenderObj;

	@RequestMapping(value = {"/msgEmail", "emailForm"}, method = RequestMethod.GET)
	public ModelAndView showEmailForm(ModelMap model) {
		modelViewObj = new ModelAndView("etablissement/sendEmail");
		return  modelViewObj;		
	}

	// This Method Is Used To Prepare The Email Message And Send It To The Client
	@RequestMapping(value = "sendEmail", method = RequestMethod.POST)
	public ModelAndView sendEmailToClient(HttpServletRequest request) {

		// Reading Email Form Input Parameters		
		emailSubject = request.getParameter("subject");
		emailMessage = request.getParameter("message");
		emailToRecipient = request.getParameter("mailTo");

		// Logging The Email Form Parameters For Debugging Purpose
		System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + ", Message?= " + emailMessage + "\n");

		mailSenderObj.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");				
				mimeMsgHelperObj.setTo(emailToRecipient);
				mimeMsgHelperObj.setFrom(emailFromRecipient);				
				mimeMsgHelperObj.setText(emailMessage);
				mimeMsgHelperObj.setSubject(emailSubject);

							
				
			}
		});
		System.out.println("\nMessage Send Successfully.... Hurrey!\n");

		modelViewObj = new ModelAndView("view","messageObj","Thank You! Your Email Has Been Sent!");
		return  modelViewObj;	
	}
}
