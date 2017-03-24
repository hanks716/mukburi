package mukburi.bbs.controller;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import mukburi.bbs.service.CookEvalBbsService;

@Controller
public class CookEvalBbsController {

	@Resource(name="cookEvalBbsService")
	private CookEvalBbsService  cookEvalBbsService;
	
	@RequestMapping(value="/cookEvalBBs/cookEvalWrite.do")
	    public ModelAndView cookEvalWrite(Map<String,Object> commandMap) throws Exception{
	    	ModelAndView mv = new ModelAndView("/cook_Eval_Bbs/cook_bbs_write");   	
	    	return mv;
	    }
	
	@RequestMapping(value="/cookEvalBBs/contentsUpload.do")
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws     Exception {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-utf-8");
		
		try {
			cookEvalBbsService.ckeditorImageUpload(request, response, upload);
			
		} catch (IOException e) {
			e.printStackTrace();
		}




	}
	
	
}
