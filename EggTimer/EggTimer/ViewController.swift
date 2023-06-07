//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation
//import SwiftUI

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 10, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var totalTimer = 0
    var secondsPassed = 0
    var player: AVAudioPlayer! //
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var barProgress: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardenessSelected(_ sender: UIButton) {
            
        let hardness = sender.currentTitle!
        //esse bloco é para zerar os valores toda vez que pressionar
        titleLabel.text = hardness
        barProgress.progress = 0.0
        totalTimer = 0
        secondsPassed = 0
        timer.invalidate()
        stopSound()
        
        totalTimer = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
            //example functionality
        if secondsPassed < totalTimer {
            secondsPassed += 1
            barProgress.progress = Float(secondsPassed) / Float(totalTimer)
        } else{
            timer.invalidate()
            titleLabel.text = "Done!!"
            playSound()
        }
    }
    
    func playSound() {
        
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func stopSound(){
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.stop()
    }
}
