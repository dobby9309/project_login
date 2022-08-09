
package com.itbank.controller;



import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itbank.service.MailService;
import com.itbank.service.UserService;
import com.itbank.user.User_nonsocialDTO;

import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private MailService mailService;
	
	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(User_nonsocialDTO dto, HttpSession session)throws NoSuchAlgorithmException {
		System.out.println(dto.getEmail());
		System.out.println(dto.getPassword());
		User_nonsocialDTO login  = userService.login(dto);
		if(login == null) {
		
			return "redirect:"+ "/relogin";
		}
		else {
		session.setAttribute("login", login);
	
	
		return "redirect:"+ "/";
		}
		
	}
	
	
	
	@RequestMapping("/detail")
	public String detail() {
		return "detail";
	}
	
	@RequestMapping("/list")
	public String list() {
		return "list";

	}
	
	@RequestMapping("/join")
	public String join() {
		return "join";
	}

	@GetMapping("/join2")
    public String join2() {
      return "join2";
    }

   @PostMapping(value="/join2", produces="text/plain; charset=utf-8",consumes="text/plain; charset=utf-8")
   @ResponseBody
   public String join2(@RequestBody String answer) throws IOException,MessagingException{
	  
      String isOK = mailService.sendConfirm(answer);
      return isOK;
   }

	
	@GetMapping("/relogin")
	public String relogin() {
		return "relogin";
	}

	
	@PostMapping("/relogin")
	public String relogin(User_nonsocialDTO dto, HttpSession session)throws NoSuchAlgorithmException {
		System.out.println(dto.getEmail());
		System.out.println(dto.getPassword());
		User_nonsocialDTO login  = userService.login(dto);
		if(login == null) {
		
			return "redirect:"+ "/relogin";
		}
		else {
		session.setAttribute("login", login);
	
	
		return "redirect:"+ "/";
		}
		
	}

//	@PostMapping(value="/join2", produces="application/json; charset=utf-8")
//	@ResponseBody
//	public String join2(@RequestBody HashMap<String, String> param) 
//			throws IOException, AddressException, MessagingException {
//		
//		System.out.println(param);
//		int row = mailService.sendMail(param);
//		return row == 1 ? "성공" : "실패";
//	}
	
	@ExceptionHandler(AddressException.class)
	@ResponseBody
	public String addressException(AddressException e) {
		e.printStackTrace();
		return "주소 예외 발생";
	}
	
	@ExceptionHandler(MessagingException.class)
	@ResponseBody
	public String messagingException(MessagingException e) {
		e.printStackTrace();
		return "메시지 구성 예외 발생";
	}
	
	@RequestMapping("/join3")
	public String join3() {
		return "join3";
	}
	
	@RequestMapping("/join4")
	public String join4() {
		return "join4";
	}

	@GetMapping("/reservation")
	public String reservation() {
		return "reservation";
	}
	@GetMapping("/reservation_approve")
	public String reservation_apporve() {
		return "reservation_approve";
	}
	
}


	


