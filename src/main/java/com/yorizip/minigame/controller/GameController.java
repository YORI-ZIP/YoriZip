package com.yorizip.minigame.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yorizip.minigame.model.Candidate;
import com.yorizip.minigame.service.GameService;

@Controller
public class GameController {

    private final GameService gameService;

    public GameController() {
        this.gameService = new GameService();
    }

    @RequestMapping("/game")
    public String startGame(@RequestParam("meal") String meal, @RequestParam("round") int round, Model model) {
        List<Candidate> candidates = gameService.getCandidatesForRound(round);
        model.addAttribute("candidates", candidates);
        model.addAttribute("meal", meal);
        model.addAttribute("round", round);
        return "main";
    }

    @RequestMapping("/result")
    public String showResult(@RequestParam("winnerId") Long winnerId, Model model) {
        Candidate winner = gameService.getCandidateById(winnerId);
        model.addAttribute("winner", winner);
        return "result";
    }
}