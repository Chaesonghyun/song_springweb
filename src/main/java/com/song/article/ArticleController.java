package com.song.article;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.HttpSession;

import com.song.book.chap11.Member;

@Controller
public class ArticleController {

	@Autowired
	ArticleDao articleDao;

	static final Logger logger = LogManager.getLogger();

	@RequestMapping("/main")
	public String main() {
		return "main";
	}

	@RequestMapping(value="/article/step1",method=RequestMethod.GET)
	public String handleStep1(@RequestParam int articleId,Model model) {
		Article article = articleDao.receieveAll(articleId);
		model.addAttribute("article",article);
		return "article/step1";
}


	@PostMapping("/article/step2")
	public String handleStep2(Article article,  HttpSession session) {
		return "article/step2";

	}
	
	@PostMapping("/article/step3")
	public String articleAdd(Article article,
			@SessionAttribute("MEMBER") Member member) {
		article.setUserId(member.getMemberId());
		article.setName(member.getName());
		articleDao.insert(article);
		return "redirect:/app/articles";
	}

	@GetMapping("/articles")
	public String articles(
			@RequestParam(value = "page", defaultValue = "1") int page,
			Model model) {

		// 페이지 당 가져오는 행의 수
		final int COUNT = 100;
		// 시작점
		int offset = (page - 1) * COUNT;

		List<Article> articleList = articleDao.selectAll(offset, COUNT);

		int totalCount = articleDao.countAll();

		model.addAttribute("totalCount", totalCount);
		model.addAttribute("articles", articleList);
		return "articles";
	}
}