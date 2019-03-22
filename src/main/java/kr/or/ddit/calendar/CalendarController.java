package kr.or.ddit.calendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalendarController {
	
	@RequestMapping("/calendar")
	public String calendar(){
		return "calendar/calendar";
	}
	
	@RequestMapping("/calendarCustom")
	public String calendarCustom(){
		return "calendar/calendarCustom";
	}
}