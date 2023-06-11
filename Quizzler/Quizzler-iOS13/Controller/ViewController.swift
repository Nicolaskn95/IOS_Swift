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
    
    @IBOutlet weak var btnFalse: UIButton!
    @IBOutlet weak var btnTrue: UIButton!
    
    let arrayQuestion = 
    
    var questionNumber = 0
    var timer = Timer()
    var secondsPassed = 0
    var totalTimer = 2
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // true or false. HERE DEFINE HOW A USER SEND A TRUE MESSAGE TO COMPARE OF A ArrayQuestion
        let actualAnswer = arrayQuestion[questionNumber].answer
        
        // if question its correct so the collor of button turn green ,if not red
        if(userAnswer == actualAnswer){
            print("Right!!")
            sender.backgroundColor = UIColor.green
            
        } else{
            sender.backgroundColor = UIColor.red
            print("Wrong!")
        }
        
        // toda vez pressionado o botao ele gera outra pergunta senao reset inddex 0       1 < 20
        if (questionNumber + 1 < arrayQuestion.count){
            questionNumber += 1
            progressBar.progress = Float(questionNumber) / Float(arrayQuestion.count - 1) // my solution of progress bar is here
        } else{
            timer.invalidate()
            questionNumber = 0
        }
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
   @objc func updateUI(){
        questionLabel.text = arrayQuestion[questionNumber].text
        btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
       progressBar.progress = Float(questionNumber + 1) / Float(arrayQuestion.count) // the solution about progress bar of the course is here
    }
}

