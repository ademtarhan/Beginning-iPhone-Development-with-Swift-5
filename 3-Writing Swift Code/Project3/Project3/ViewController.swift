//
//  ViewController.swift
//  Project3
//
//  Created by Adem Tarhan on 6.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputLabel.layer.borderColor = UIColor.blue.cgColor
        inputLabel.layer.borderWidth = 0.5
    }

    @IBAction func didTapButton(_ sender: Any) {
        
        inputLabel.text = inputTextField.text
        inputTextField.text = ""
        
    }
    
}

