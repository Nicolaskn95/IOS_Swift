//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nicolas Katsuji Nagano on 14/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var lblResultText: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = bmiValue
        lblResultText.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func btnRecalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
