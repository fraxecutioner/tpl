package com.rain.tpl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@RequestMapping("/ResetPass")
@Controller
public class ForgotPassword {
	
	@RequestMapping("/forgotpassword")
	public String forgotPassword()
	{
		
		return "ForgotPassword";
	}
	
	@RequestMapping("/sendOTP")
	@ResponseBody
	public String sendOTP(@RequestParam String id)
	{
		String json="";
		Map<String, String> otp = new HashMap<String,String>();
		otp.put("otp","1234");
		
		try {
			 json = new ObjectMapper().writeValueAsString(otp);
			 //configure email to send otp 
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
   	
		return json;
	}
}
