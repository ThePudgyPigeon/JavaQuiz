package com.quiz.javaquiz.controller;

import com.quiz.javaquiz.model.Question;
import com.quiz.javaquiz.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/quiz")
public class QuestionController {


    @Autowired
    QuestionService service;

    @GetMapping
    public List<Question> list() {
        return service.getAllQuestions();
    }


}
