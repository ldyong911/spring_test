package kr.or.ddit.domain;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hello {
	
	@RequestMapping("/hello")
	public String helloTest(){
		
		return "domain/hello";
	}
}