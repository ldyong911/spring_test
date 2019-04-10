package kr.or.ddit.date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DateController {
	@RequestMapping("/date")
	public String calendar(){
		return "date/date";
	}
}