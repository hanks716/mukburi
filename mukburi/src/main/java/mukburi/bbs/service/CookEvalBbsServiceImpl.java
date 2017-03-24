package mukburi.bbs.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import mukburi.bbs.dao.CookEvalBbsDAO;

@Service("cookEvalBbsService")
public class CookEvalBbsServiceImpl implements CookEvalBbsService {

	@Resource(name="cookEvalBbsDAO")
	private CookEvalBbsDAO  cookEvalBbsDAO;
	
	private static final String FILE_URL = "D:/upload_img";

	private static final String SAVE_URL = "D:/upload_img";
	
	
	
	
	@SuppressWarnings("resource")
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception {
		OutputStream out = null;
		PrintWriter printWriter = null;	
		String fileName = file.getOriginalFilename();
		byte[] bytes = file.getBytes();
		String uploadPath = FILE_URL + "\\" + fileName;
		
		System.out.println(uploadPath);
		out = new FileOutputStream(new File(uploadPath));
		out.write(bytes);
		String callback = request.getParameter("CKEditorFuncNum");
		
		printWriter = response.getWriter();
		String fileUrl = SAVE_URL + "/" +fileName; //url 경로
		
		printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
	               + callback
	               + ",'"
	               + fileUrl
	               + "','이미지를 업로드 하였습니다.'"
	               + ")</script>");
	       printWriter.flush();
	}


	
}
