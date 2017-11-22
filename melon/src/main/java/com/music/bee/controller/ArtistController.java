package com.music.bee.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/artist")
public class ArtistController {
	
	
	@Autowired
	private SqlSession sqlSession;


	@RequestMapping("/main")
	public String artist_main(){
		
	return "artist_main";
	}
	
	@RequestMapping("/music")
	public String artist_music(){
		
	return "artist_music";
	}
	
	@RequestMapping("/album")
	public String artist_album(){
		
	return "artist_album";
	}
	
	@RequestMapping("/video")
	public String artist_video(){
	
	return "artist_video";
	}
	
	
	
	
	
}
