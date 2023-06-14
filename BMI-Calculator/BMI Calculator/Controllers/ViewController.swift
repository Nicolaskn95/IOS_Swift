//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var lblHeightVal: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var lblWeightVal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
//        print(round(100 * heightSlider.value) / 100)
        let valHeightSlider = String(format: "%.2f", heightSlider.value)
        lblHeightVal.text = "\(valHeightSlider)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let valWeightSlider = Int(weightSlider.value)
        lblWeightVal.text = "\(valWeightSlider)Kg"
    }
    
    @IBAction func btnCalculate(_ sender: UIButton) {
        var resultHeight: Float = 0
        var resultWeight: Float = 0
        var finalResult: String = ""
        
        resultHeight = (pow(heightSlider.value, 2))
        resultWeight = (weightSlider.value)
        finalResult = (String(format: "%.2f",resultWeight/resultHeight))
        
        print(finalResult)
    }
    
}

