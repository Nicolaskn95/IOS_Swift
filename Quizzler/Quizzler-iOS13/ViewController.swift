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
    
    let arrayQuestion = [
              Question(q: "A slug's blood is green.", a: "True"),
              Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
              Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
              Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
              Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
              Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
              Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
              Question(q: "Google was originally called 'Backrub'.", a: "True"),
              Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
              Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
              Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
              Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")

                       ]
    
    var questionNumber = 0
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // true or false. HERE DEFINE HOW A USER SEND A TRUE MESSAGE TO COMPARE OF A ArrayQuestion
        print(userAnswer as Any)
        let actualAnswer = arrayQuestion[questionNumber].answer
        
        // if question its correct so the collor of button turn green ,if not red
        if(userAnswer == actualAnswer){
            print("Right!!")
            sender.backgroundColor = UIColor.green
        } else{
            sender.backgroundColor = UIColor.red
            print("Wrong!")
        }
        
      
    
        // toda vez pressionado o botao ele gera outra pergunta senao reset inddex 0
        if (questionNumber + 1 < arrayQuestion.count){
            questionNumber += 1
        } else{
            questionNumber = 0
        }
        upedateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upedateUI()
    }
    
    func upedateUI(){
        
        questionLabel.text = arrayQuestion[questionNumber].text
        btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
    }

}

