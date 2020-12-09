//
//  ViewController.swift
//  ButtonApp
//
//  Created by Ivan Zakharov on 6/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    var imageService: ImageService = ImageService.shared
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var contentTextField: UITextField!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundImage.image  = imageService.getImage()
    }
    
    @IBAction func changeText(_ sender: Any) {
        textLabel.text = contentTextField.text
        view.endEditing(true)
    }
    @IBAction func changeBackground(_ sender: Any) {
        imageService.numberBackgroundImage += 1
        backgroundImage.image  = imageService.getImage()
    }
}
