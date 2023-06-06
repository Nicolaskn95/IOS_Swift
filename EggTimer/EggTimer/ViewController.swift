//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    @IBAction func hardenessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
  
        
       let result = eggTimes[hardness]!
        
        print(result)
        
        
        
//        switch hardness{
//        case "Soft":
//            print(eggTimes:0)
//        case "Medium":
//            print(eggTimes.1)
//        case "Hard":
//            print(eggTimes.2)
//        default:
//            print("Error")
//        }
        
//        if(hardness == "Soft"){
//            print(softTime)
//        }
//        else if (hardness == "Medium")
//        {
//            print (mediumTime)
//        }
//        else
//        {
//            print(hardTime)
//        }
    }
}
