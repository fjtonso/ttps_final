package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ErrorController {

	@RequestMapping(value = {"noImplementado"})
    public ModelAndView listarMenues() {
		String error="error";
        return new ModelAndView("falta", "error", error);
	}
}
