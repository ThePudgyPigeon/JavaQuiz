package com.quiz.javaquiz.model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="answers")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnswerBank {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="answer_text", columnDefinition = "TEXT")
    private String text;

    @Column(name="is_correct")
    private boolean isCorrect;

    @ManyToOne
    @JoinColumn(name="question_id")
    private Question question;

}
