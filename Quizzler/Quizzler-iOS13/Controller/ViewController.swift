//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var btnFalse: UIButton!
    @IBOutlet weak var btnTrue: UIButton!
    
    var questionNumber = 0
    var timer = Timer()
    var secondsPassed = 0
    var totalTimer = 2
    var quizBrain = QuizBrain()
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // true or false. HERE DEFINE HOW A USER SEND A TRUE MESSAGE TO COMPARE OF A ArrayQuestion
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        
        // if question its correct so the collor of button turn green ,if not red
        if(userGotItRight){
            print("Right!!")
            sender.backgroundColor = UIColor.green
        } else{
            sender.backgroundColor = UIColor.red
            print("Wrong!")
        }
        
        quizBrain.nextQuestion()
        // toda vez pressionado o botao ele gera outra pergunta senao reset inddex 0       1 < 20
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
   @objc func updateUI(){
       questionLabel.text = quizBrain.getQustionText()
       progressBar.progress = quizBrain.getProgress() // the solution about progress bar of the course is here
       scoreLabel.text = "Score: \(quizBrain.getScore())"
       btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
    }
}

