package mukburi.bbs.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import mukburi.bbs.dao.CookEvalBbsDAO;

@Service("cookEvalBbsService")
public class CookEvalBbsServiceImpl implements CookEvalBbsService {

	@Resource(name="cookEvalBbsDAO")
	private CookEvalBbsDAO  cookEvalBbsDAO;
	
}
