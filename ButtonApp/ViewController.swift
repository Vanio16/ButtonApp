//
//  ViewController.swift
//  ButtonApp
//
//  Created by Ivan Zakharov on 6/12/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    let newText = "New text"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeText(_ sender: Any) {
        textLabel.text = newText
    }
    
}

