package kr.ne.abc.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * home
	 * @param locale
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	public String home(
			Locale locale
			, Model model
			) {
		
		return "home";
	}
	
}
