//
//  ViewController.swift
//  ButtonApp
//
//  Created by Ivan Zakharov on 6/12/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var contentTextField: UITextField!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var numberBackImage = 0
    
    
    @IBAction func changeText(_ sender: Any) {
        textLabel.text = contentTextField.text
        view.endEditing(true)
    }
    @IBAction func changeBackground(_ sender: Any) {
        numberBackImage += 1
        if numberBackImage == 3 {
            numberBackImage = 0
        }
        switch numberBackImage {
            case 0: backgroundImage.image = UIImage(named: "first")
            case 1: backgroundImage.image = UIImage(named: "second")
            case 2: backgroundImage.image = UIImage(named: "third")
            default: numberBackImage = 0
        }
        
    }

}

