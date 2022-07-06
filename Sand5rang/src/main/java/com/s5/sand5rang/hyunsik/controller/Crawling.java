package com.s5.sand5rang.hyunsik.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Crawling {

    
    @RequestMapping(value="admain.hs")
    public String craw_select(HttpServletRequest req,HttpServletResponse resp)throws Exception {
        

        String url = "https://search.naver.com/search.naver?where=news&sm=tab_jum&query=%EC%83%8C%EB%93%9C%EC%9C%84%EC%B9%98";
        Document doc =Jsoup.connect(url).get();

        Elements ele = doc.select("a.news_tit");
        Elements ele2 = doc.select("a.api_txt_lines");
        Elements ele3 = doc.select("img.thumb");

        String a = ele.toString();
        String b = ele2.toString();
        String c = ele3.toString();
        
        
        String[] arr = a.split("</a>");
        String[] arr2 = b.split("</a>");
        String[] arr3 = c.split(">");
        
        req.setAttribute("title", arr);
        req.setAttribute("content", arr2);
        req.setAttribute("image", arr3);
        
        return "hyunsik/adminMain";
	
	
	
    }
    
    
    @RequestMapping(value="frmain.hs")
    public String craw_select2(HttpServletRequest req,HttpServletResponse resp)throws Exception {
        

        String url = "https://search.naver.com/search.naver?where=news&sm=tab_jum&query=%EC%83%8C%EB%93%9C%EC%9C%84%EC%B9%98";
        Document doc =Jsoup.connect(url).get();

        Elements ele = doc.select("a.news_tit");
        Elements ele2 = doc.select("a.api_txt_lines");
        Elements ele3 = doc.select("img.thumb");

        String a = ele.toString();
        String b = ele2.toString();
        String c = ele3.toString();
        
        
        String[] arr = a.split("</a>");
        String[] arr2 = b.split("</a>");
        String[] arr3 = c.split(">");
        
        req.setAttribute("title", arr);
        req.setAttribute("content", arr2);
        req.setAttribute("image", arr3);
        
        return "hyunsik/storeMain";
	
	
	
    }
    
}
