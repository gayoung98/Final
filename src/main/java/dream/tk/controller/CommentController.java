package dream.tk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dream.tk.dto.StoreCommentDTO;
import dream.tk.service.CommentService;


@Controller
@RequestMapping("/comment")
public class CommentController {
	
	@Autowired
	private CommentService service;
	
	 @RequestMapping("/list") //댓글 리스트
	 @ResponseBody
	    private List<StoreCommentDTO> mCommentServiceList(int bno, Model model) throws Exception{
		 System.out.println(bno);
	        return service.commentListService(bno);
	    }
	    
	    @RequestMapping("/insert") //댓글 작성 
	    @ResponseBody
	    private int mCommentServiceInsert(@RequestParam int bno, @RequestParam String content) throws Exception{
	    	StoreCommentDTO comment = new StoreCommentDTO();
	    	comment.setBno(bno);
	        comment.setContent(content);
	        comment.setWriter("test");  
	        return service.commentInsertService(comment);
	    }
	    
	    @RequestMapping("/update") //댓글 수정  
	    @ResponseBody
	    private int mCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception{
	        System.out.println("cno");
	    	StoreCommentDTO comment = new StoreCommentDTO();
	    	comment.setCno(cno);
	    	comment.setContent(content);
	        return service.commentUpdateService(comment);
	    }
	    
	    @RequestMapping("/delete/{cno}") //댓글 삭제  
	    @ResponseBody
	    private int mCommentServiceDelete(@PathVariable int cno) throws Exception{
	        
	        return service.commentDeleteService(cno);
	    }


	
}