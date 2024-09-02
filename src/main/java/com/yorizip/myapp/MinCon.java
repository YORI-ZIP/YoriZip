//package com.yorizip.myapp;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import java.util.Locale;
//
//@Controller
//public class MinCon {
//
//    @RequestMapping(value = "/Index", method = RequestMethod.POST)
//    public String Index(Locale locale, Model model) {
//        return "/minigame/Index";
//    }
//    // 기존 GET 메서드
//    @RequestMapping(value = "/Main", method = RequestMethod.GET)
//    public String mainGet(Locale locale, Model model) {
//        // GET 요청 처리 로직
//        return "minigame/Main";  // JSP 파일 경로 반환
//    }
//
//    // POST 요청 처리 메서드 추가
//    @RequestMapping(value = "/Main", method = RequestMethod.POST)
//    public String mainPost(Locale locale, Model model) {
//        // POST 요청 처리 로직
//        return "minigame/Main";  // JSP 파일 경로 반환
//    }
//
//    @RequestMapping(value = "/result", method = RequestMethod.GET)
//    public String result(Locale locale, Model model) {
//
//        return "/minigame/result";
//    }
//}
