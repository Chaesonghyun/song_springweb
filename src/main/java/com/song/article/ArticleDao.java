package com.song.article;

import java.util.List;

public interface ArticleDao {
	Article selectByTitle(String title);
	int insert(Article article);
	void update(Article article);
	List<Article> selectAll(int offset, int count);
	
	int countAll();

Article receieveAll(Article article);


Article receieveAll(int articleId);
}