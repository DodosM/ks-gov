package com.konantech.ksearch;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */

@Controller //controller라고 bean선언
public class HomeController {

    @Value("#{searchConfig['SEARCH_URL']}") 
    private String searchUrl;

    //@Resource(name="volumeMap")
    //private Map<String, String> mapVolume;



	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 * locale.class는 지역의 언어,나라 등의 정보를 담고 있는 클래스
	 * model 타입을 메서드로 파라미터로 주입 하게 되면 -> view로 전달하는 데이터를 담아서 보낼 수 있음
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		logger.info(">>>>>>>>>>>>>> "+searchUrl);


		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "home"; //view단의 home.jsp로 리턴
	}

}
