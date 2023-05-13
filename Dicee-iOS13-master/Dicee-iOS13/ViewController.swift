//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceTwo")
        
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: "DiceSix")
        
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print(Int.random(in: 0...5))
        
        
        
        let x1 = Int.random(in: 0...5)
        let x2 = Int.random(in: 0...5)
        
        let array1 = [
            UIImage(imageLiteralResourceName:"DiceOne"),
            UIImage(imageLiteralResourceName:"DiceTwo"),
            UIImage(imageLiteralResourceName:"DiceThree"),
            UIImage(imageLiteralResourceName:"DiceFour"),
            UIImage(imageLiteralResourceName:"DiceFive"),
            UIImage(imageLiteralResourceName:"DiceSix")
            ][x1]
        
        let array2 = [
            UIImage(imageLiteralResourceName:"DiceOne"),
            UIImage(imageLiteralResourceName:"DiceTwo"),
            UIImage(imageLiteralResourceName:"DiceThree"),
            UIImage(imageLiteralResourceName:"DiceFour"),
            UIImage(imageLiteralResourceName:"DiceFive"),
            UIImage(imageLiteralResourceName:"DiceSix")
            ][x2]
        
        diceImageViewOne.image = array1
        diceImageViewTwo.image = array2                                        
    }
}

