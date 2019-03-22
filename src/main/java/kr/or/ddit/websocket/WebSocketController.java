package kr.or.ddit.websocket;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebSocketController {
	
	@RequestMapping("/webSocket")
	public String webSocket(Model model){
		
		model.addAttribute("id", "메롱");
		
		return "websocket/webSocket";
	}
}