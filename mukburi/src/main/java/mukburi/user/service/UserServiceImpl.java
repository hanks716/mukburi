package mukburi.user.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import mukburi.user.dao.UserDAO;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Resource(name = "userDAO")
	private UserDAO userDAO;

	
	@Override
	public void userJoin(Map<String, Object> map) throws Exception {

		userDAO.userJoin(map);

	}

}
