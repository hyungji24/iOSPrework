//
//  ViewController.swift
//  iOSPreWork
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var TextLabel: UILabel!

    @IBOutlet var BackgroundView: UIView!
    
    @IBAction func TextButtonClicked(_ sender: Any) {
        if inputField.text == "" {
            TextLabel.text = "Goodbye"
        } else {
            TextLabel.text = inputField.text
            inputField.text = ""
            view.endEditing(true)
        }
    }
    
    @IBAction func TextColorButtonClicked(_ sender: Any) {
        TextLabel.textColor = UIColor.orange
    }
    
    @IBAction func BackgroundButtonClicked(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func TapBackground(_ sender: UITapGestureRecognizer) {
        view.backgroundColor = UIColor.white
    }

}
