package mukburi.user.service;

import java.util.Map;

import org.springframework.stereotype.Service;

public interface UserService {

	void userJoin(Map<String, Object> map) throws Exception;
}
