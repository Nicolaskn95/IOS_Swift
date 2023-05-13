//
//  ViewController.swift
//  I am Hero
//
//  Created by Maicon Santos on 06/05/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func switchImage(_ sender: UISwitch) {
        if(sender.isOn == false)
        {
            imageView.image = UIImage(imageLiteralResourceName: "Spider-Man Headspidey")
            text.text = "I`m SpiderMan"
        }else{
            imageView.image = UIImage(imageLiteralResourceName: "Spider-Man Headspidey_contrast")
            text.text = "I`m SpiderMan"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var text: UILabel!
    
    @IBAction func btnHuman(_ sender: UIButton) {
        imageView.image = UIImage(imageLiteralResourceName: "Human Headhuman")
        
        text.text = "I`m NICOLAS NAGANO"
        text.textColor = UIColor(named: "red")
        

        
    }
    
}

