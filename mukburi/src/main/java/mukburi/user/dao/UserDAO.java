package mukburi.user.dao;

import java.util.Map;
import org.springframework.stereotype.Repository;

import mukburi.common.dao.AbstractDAO;

@Repository("userDAO")
public class UserDAO  extends AbstractDAO {

	public void userJoin(Map<String, Object> map) throws Exception{
	    insert("user.userJoin", map);
	}
}
