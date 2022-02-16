package com.farmporter.myapp.controller;

import java.security.InvalidParameterException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.farmporter.myapp.model.AuthInfo;
import com.farmporter.myapp.model.NoticeVO;
import com.farmporter.myapp.model.SignUpVO;
import com.farmporter.myapp.model.UserVO;
import com.farmporter.myapp.service.IUserService;

@Controller
public class UserController{
	
	@Autowired
	IUserService userService;
	
	@RequestMapping(value= {"/", "/main_page"})
	public String mainPage(Model model) {return "main_page";}
	
	
	@RequestMapping(value= {"/farm_sites"})
	public String farmSites(Model model) {return "farm_sites";}

	@RequestMapping(value= {"/intro"})
	public String intro(Model model) {return "intro";}
	
	@RequestMapping(value= {"/profit_crop"})
	public String profitCrop(Model model) {return "profit_crop";}
	
	@RequestMapping(value= {"/profit_fruit"})
	public String profitFruit(Model model) {return "profit_fruit";}
	
	@RequestMapping(value= {"/profit_vegi_fac"})
	public String profitVegiFac(Model model) {return "profit_vegi_fac";}
	
	@RequestMapping(value= {"/profit_vegi_wild"})
	public String profitVegiWild(Model model) {return "profit_vegi_wild";}
	
	@RequestMapping(value= {"/predict"})
	public String predict(Model model) {return "predict";}
	
    @RequestMapping(value= {"/cost_comparison"})
    public String costComparison(Model model) {return "cost_comparison";}
    
    @RequestMapping(value= {"/farmer_profit"})
    public String farmerProfit(Model model) {return "farmer_profit";}
    
    @RequestMapping(value= {"/gov_land_cost"})
    public String govLandCost(Model model) {return "gov_land_cost";}
    
    @RequestMapping(value= {"/loan_settle_cost"})
    public String loanSettleCost(Model model) {return "loan_settle_cost";}
    
	@RequestMapping(value= {"/login"})
	public String logIn(Model model) {
		return "login";
	}
	@RequestMapping(value= {"/login_fail"})
	public String logInFail(Model model) {
		return "login_fail";
	}

	@RequestMapping(value= {"/my_page/{id}"})
	public String myPage(@PathVariable String id, Model model) {
		//String userId = authInfo.getId();
		UserVO user = userService.getUserInfo(id);
		model.addAttribute("user",user);
		return "my_page";
	}
	
	@RequestMapping(value= {"/my_page_edit/{id}"})
	public String myPageEdit(@PathVariable String id, Model model) {
		UserVO user = userService.getUserInfo(id);
		model.addAttribute("user",user);
		return "my_page_edit";
	}
	
	@RequestMapping(value= "/my_page_edit_submit", method=RequestMethod.POST)
	public String myPageEditSubmit(@PathVariable UserVO user, Model model) {
		userService.updateUser(user);
		UserVO user_updated = userService.getUserInfo(user.getUserId());
		model.addAttribute("user",user_updated);
		return "my_page";
	}

	@RequestMapping(value= {"/register"})
	public String register(Model model) {
		return "register";
	}
	
   @RequestMapping(value= "/signup", method=RequestMethod.POST)
   public ModelAndView insertUser(SignUpVO user, Model model) throws SQLIntegrityConstraintViolationException {
      ModelAndView mv = new ModelAndView();
      try {
         userService.insertUser(user);
         mv.addObject("result", true);
         mv.setViewName("redirect:login");
       } catch(InvalidParameterException e) {   
          mv.addObject("result", false);      
          mv.setViewName("redirect:register");
       } 
      return mv;
   }
	
	@RequestMapping(value= {"/agreement"})
	public String agreement(Model model) {
		return "agreement";
	}

    @RequestMapping(value="/loginCheck", method=RequestMethod.POST)
    public String loginCheck(@RequestParam String userid, @RequestParam String password, Model model, HttpServletRequest request){
       HttpSession session = request.getSession();
       UserVO user = userService.getUserCheck(userid, password);
       
      if(userid.equals(user.getUserId()) && password.equals(user.getPassword())) {
    	  AuthInfo authInfo = userService.authenticate(user.getUserId(), user.getPassword());
    	  session.setAttribute("authInfo", authInfo);
    	  return "redirect:main_page";
       }
        return "redirect:login_fail";
    }
    
   
   @RequestMapping("/logout")
   public String logout(HttpSession session) {
       session.invalidate();
       return "redirect:main_page";
   }
	
/*	@ExceptionHandler({RuntimeException.class})
	public ModelAndView runtimeException(HttpServletRequest request, Exception ex) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("url", request.getRequestURI());
		mav.addObject("exception", ex);
		mav.setViewName("error/runtime");
		return mav;
	}
*/
	
	
	
		
	
	
}








