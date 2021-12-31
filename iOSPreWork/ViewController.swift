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
            TextLabel.text = "Goodbye 👋"
        } else {
            TextLabel.text = inputField.text
            inputField.text = ""
            view.endEditing(true)
        }
    }
    
    @IBAction func TextColorButtonClicked(_ sender: Any) {
        if TextLabel.textColor == UIColor.systemIndigo {
            TextLabel.textColor = UIColor.systemPink
        } else {
            TextLabel.textColor = UIColor.systemIndigo
        }
    }
    
    @IBAction func BackgroundButtonClicked(_ sender: Any) {
        view.backgroundColor = UIColor.systemIndigo
    }
    
    @IBAction func TapBackground(_ sender: UITapGestureRecognizer) {
        // setting everything back to default
        view.backgroundColor = #colorLiteral(red: 0.4257946908, green: 0.630717814, blue: 0.7827987075, alpha: 1)
        TextLabel.text = "Hello from Hyungji!"
        TextLabel.textColor = UIColor.systemIndigo

    }

}
