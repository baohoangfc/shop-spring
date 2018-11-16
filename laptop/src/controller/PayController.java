package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class PayController {
	
	@RequestMapping(method=RequestMethod.POST)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="paypal")
	public String paypal() {
		return "public.laptop.paypal";
	}
	
	@RequestMapping(value="paypal",method=RequestMethod.POST)
	public String paypal(ModelMap modelMap) {
		return "public.laptop.paypal";
	}
}
