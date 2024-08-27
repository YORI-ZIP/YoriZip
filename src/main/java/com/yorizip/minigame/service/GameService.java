package com.yorizip.minigame.service;

import com.yorizip.minigame.model.Candidate;

import java.util.ArrayList;
import java.util.List;

public class GameService {

    private List<Candidate> candidates;

    public GameService() {
        candidates = new ArrayList<>();
        candidates.add(new Candidate(1L, "Bibimbap", "{pageContext.request.contextPath}/static/images/minigame/bibimbab.png"));
        candidates.add(new Candidate(2L, "Budaejjigae", "{pageContext.request.contextPath}/static/images/minigame/budaejjigae.png"));
        candidates.add(new Candidate(3L, "Gunmandu", "{pageContext.request.contextPath}/static/images/minigame/gunmandu.png"));
        candidates.add(new Candidate(4L, "Janchigugsu", "{pageContext.request.contextPath}/static/images/minigame/janchigugsu.png"));
        candidates.add(new Candidate(5L, "Ramen", "/static/images/minigame/ramen.png"));
        candidates.add(new Candidate(6L, "Salad", "/static/images/minigame/salad.png"));
        candidates.add(new Candidate(7L, "Stonepot Rice", "/static/images/minigame/stonepotrice.png"));
        candidates.add(new Candidate(8L, "Tteokbokki", "/static/images/minigame/tteokbokki.png"));
    }

    public List<Candidate> getCandidatesForRound(int roundSize) {
        return candidates.subList(0, Math.min(roundSize, candidates.size()));
    }

    public Candidate getCandidateById(Long id) {
        return candidates.stream()
                .filter(candidate -> candidate.getId().equals(id))
                .findFirst()
                .orElse(null);
    }
}