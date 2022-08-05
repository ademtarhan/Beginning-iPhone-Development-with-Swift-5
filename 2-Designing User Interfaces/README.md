# Beginning-iPhone-Development-with-Swift-5


# 2. Designing User Interfaces


- Views
- Objects such as buttons, labels, text boxes, and switches
- Segues


# Programmatically

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

# Visually

![329781_5_En_2_Fig1_HTML](https://user-images.githubusercontent.com/72447691/183061287-a10e333c-bfdc-464b-835f-c82606e4584a.jpg)



