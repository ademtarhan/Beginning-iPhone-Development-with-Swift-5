//
//  ViewController.swift
//  Project2
//
//  Created by Adem Tarhan on 5.08.2022.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.frame = CGRect(x: 125, y: 125, width: 200, height: 40)
        label.text = "This is a label"
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.blue.cgColor
        label.textAlignment = .center
        view.addSubview(label)

        let button = UIButton()
        button.frame = CGRect(x: 125, y: 300, width: 80, height: 40)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blue.cgColor
        view.addSubview(button)
    }
}
