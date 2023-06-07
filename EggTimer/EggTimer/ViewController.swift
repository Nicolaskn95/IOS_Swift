//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation
//import SwiftUI

class ViewController: UIViewController {
    
    var counter = 60
    let eggTimes = ["Soft": 2, "Medium": 2, "Hard": 2]
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func hardenessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        timer.invalidate()
        
        counter = eggTimes[hardness]!
        
        print(counter-1)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
            //example functionality
        if counter > 0 {
            print("\(counter) seconds.")
            counter -= 1
        } else{
            timer.invalidate()
            titleLabel.text = "Done!!"
        }
    }
}
