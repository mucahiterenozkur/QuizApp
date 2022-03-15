//
//  QuizBrain.swift
//  QuizApp
//
//  Created by Mücahit Eren Özkur on 15/03/2022.

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "What is the highest governing body of basketball?", a: ["EuroLeague", "NBA", "FIBA"], correctAnswer: "FIBA"),
        Question(q: "Who made basketball?", a: ["James Naismith", "William Morgan", "Jim Thorpe"], correctAnswer: "James Naismith"),
        Question(q: "There are __ total players on the basketball at one time.", a: ["5", "10", "15"], correctAnswer: "10"),
        Question(q: "A free throw is worth…", a: ["1", "2", "3"], correctAnswer: "1"),
        Question(q: " _____-picking is a strategy that involves a player waiting around for scoring opportunities rather than defends.", a: ["Apple", "Orange", "Cherry"], correctAnswer: "Cherry"),
        Question(q: "The main responsibility of the “center” player is to…", a: ["make baskets", "steal the ball and block attacks", "secure rebounds and defend the paint"], correctAnswer: "secure rebounds and defend the paint"),
        Question(q: "A rebound is…", a: ["a type of move", "a technique", "a statistic"], correctAnswer: "a statistic"),
        Question(q: "Kicking a basketball is what kind of foul?", a: ["Personal", "Flagrant", "Technical"], correctAnswer: "Technical"),
        Question(q: "Which team won the first NBA Championship?", a: ["Cavaliers", "Rockets", "Lakers"], correctAnswer: "Lakers"),
        Question(q: "The first NBA player to win five season MVP awards was…", a: ["Bill Russell", "LeBron James", "Michael Jordan"], correctAnswer: "Bill Russell")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here. 
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

