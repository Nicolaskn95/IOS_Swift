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
    
    @IBAction func btnSoft(_ sender: UIButton) {
        print(sender.titleLabel?.text as Any)
    }
    
    @IBAction func btnMedium(_ sender: UIButton) {
        print(sender.titleLabel?.text as Any)
    }
    @IBAction func btnHard(_ sender: UIButton) {
        print(sender.titleLabel?.text as Any)
    }
    
}
