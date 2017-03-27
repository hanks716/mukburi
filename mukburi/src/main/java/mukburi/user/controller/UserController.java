package mukburi.user.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mukburi.user.service.UserService;
import mukburi.common.common.CommandMap;

@Controller
public class UserController {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping(value="/user/user_Join.do")
	public ModelAndView openUserJoin ()throws Exception{		
		ModelAndView mv = new ModelAndView("/user/user_Join");	
		return mv;
	
	}
	
	@RequestMapping(value="/user/userJoin.do")
	public ModelAndView userJoin(CommandMap commandMap)throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/bbs/openBoardList.do");
	     
	    userService.userJoin(commandMap.getMap());
	     
	    return mv;
	}
	
}







