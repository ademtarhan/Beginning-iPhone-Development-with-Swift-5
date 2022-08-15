# Beginning-iPhone-Development-with-Swift-5

# 10. Buttons, Switches, and Segmented Controls

![329781_5_En_10_Fig1_HTML](https://user-images.githubusercontent.com/72447691/184630542-00a9c47d-1d0b-43fb-9ca3-63419c75c489.jpg)
->Comparing the visual appearance of a button, switch, and segmented control

Understanding Events

*Touch Up Inside – A tap inside the bounds of an object with the finger lifting up

*Touch Up Outside – A tap outside the bounds of an object

*Touch Down – A tap inside the bounds of an object

*Touch Down Repeat – Two or more taps inside the bounds of an object

*Touch Drag Enter – Where a finger touches outside the object and slides over the object

*Touch Drag Exit – Where a finger touches inside an object and slides away from it

*Touch Drag Inside – Where a finger slides inside an object

*Touch Drag Outside – Where a finger slides just outside an object

*Value Changed – Where manipulating an object changes its stored value such as with a slider

*Editing Changed – When text changes inside a text field

*Editing Did Begin – When a finger taps inside a text field

*Editing Did End – When a finger taps outside a text field



# Using Buttons

*In the Attributes Inspector pane
*By double-clicking the button
*Through Swift code

![329781_5_En_10_Fig2_HTML](https://user-images.githubusercontent.com/72447691/184630810-6358187a-eb30-4d1a-963f-03e24754ffe0.jpg)

->Changing the title of a button in the Attributes Inspector

![329781_5_En_10_Fig3_HTML](https://user-images.githubusercontent.com/72447691/184630840-736df62e-e345-44fe-933b-788de6c67530.jpg)

->The Event popup menu displays Touch Up Inside by default for buttons

Edit this touchInside IBAction method as follows:


''' 

          @IBAction func touchInside(_ sender: UIButton) {
                buttonObject.setTitle("New", for: UIControl.State.normal)
            }
'''

 The entire ViewController.swift file should look like this:
 
    import UIKit
    class ViewController: UIViewController {
        @IBOutlet var buttonObject: UIButton!
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func touchInside(_ sender: UIButton) {
            buttonObject.setTitle("New", for: UIControl.State.normal)
        }
    }
'''


# Using a Switch


![329781_5_En_10_Fig4_HTML](https://user-images.githubusercontent.com/72447691/184672579-220520b4-e542-489a-93aa-0860d2da6180.jpg)

->Switches are often used to turn settings on or off

* The three common properties of a switch to modify include
* isOn – Determines if a switch has a value of true (on) or false (off)
* onTintColor – Determines the color to display when a switch’s isOn property is true (on)
* tintColor – Determines the color to display when a switch’s isOn property is false (off)


Xcode creates an IBOutlet variable as follows:

    @IBOutlet var labelSwitch: UILabel!

Xcode creates an IBOutlet variable as follows:

    @IBOutlet var switchObject: UISwitch!

Xcode creates an IBAction method as follows:

    @IBAction func switchChanged(_ sender: UISwitch) {
    }
    
    	
Edit the switchChanged IBAction method as follows:

    @IBAction func switchChanged(_ sender: UISwitch) {
        if switchObject.isOn {
            labelSwitch.text = "On"
        } else {
            labelSwitch.text = "Off"
        }
    }
	
Edit the touchInside IBAction method as follows:

    @IBAction func touchInside(_ sender: UIButton) {
        buttonObject.setTitle("New", for: UIControl.State.normal)
        switchObject.onTintColor = UIColor.red
        switchObject.tintColor = UIColor.blue
    }

The entire ViewController.swift file should look like this:

    import UIKit
    class ViewController: UIViewController {
        @IBOutlet var buttonObject: UIButton!
        @IBOutlet var labelSwitch: UILabel!
        @IBOutlet var switchObject: UISwitch!
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func touchInside(_ sender: UIButton) {
            buttonObject.setTitle("New", for: UIControl.State.normal)
            switchObject.onTintColor = UIColor.red
            switchObject.tintColor = UIColor.blue
        }
        @IBAction func switchChanged(_ sender: UISwitch) {
            if switchObject.isOn {
                labelSwitch.text = "On"
            } else {
                labelSwitch.text = "Off"
            }
        }
    }
    

![329781_5_En_10_Fig5_HTML](https://user-images.githubusercontent.com/72447691/184673354-1bf280d4-58e3-4804-a4f6-6e8ec4bc8939.jpg)

->The label displays whether a switch is on or off


# Using a Segmented Control

* Segments – Defines the number of segments (buttons) in a segmented control

* Segment – A popup menu that lets you choose which segment to modify

* Title – Defines the text that appears on the segment defined by the Segment popup menu

* Image – Defines an image to appear on the segment defined by the Segment popup menu

* Selected – A check box that defines which segment appears selected (highlighted) where only one segment in an entire segmented control can be selected

![329781_5_En_10_Fig6_HTML](https://user-images.githubusercontent.com/72447691/184673528-df64e950-bab8-4394-81ae-c2aafb74bfb8.jpg)

->Modifying a segmented control in the Attributes Inspector

![329781_5_En_10_Fig7_HTML](https://user-images.githubusercontent.com/72447691/184673590-97b076dc-2e02-4cba-a050-ccf899f0f5f4.jpg)

->Double-clicking directly a segmented control title lets you edit that title

![329781_5_En_10_Fig8_HTML](https://user-images.githubusercontent.com/72447691/184673668-fa557e2a-6bcd-4c4f-9d4b-a640a11c5523.jpg)

-> Changing a segment title in the Attributes Inspector pane


Xcode creates an IBOutlet variable as follows:

    @IBOutlet var segmentedControl: UISegmentedControl!

	
Modify this segmentedControlTapped IBAction method as follows:

        @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            labelSwitch.text = "One"
        case 1:
            labelSwitch.text = "Two"
        default:
            labelSwitch.text = "Three"
        }
    }

	
Edit the viewDidLoad method as follows:

    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.insertSegment(withTitle: "Three", at: 2, animated: true)
        segmentedControl.setWidth(50, forSegmentAt: 0)
        segmentedControl.setWidth(50, forSegmentAt: 1)
        segmentedControl.setWidth(50, forSegmentAt: 2)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
The entire ViewController.swift file should look like this:

    import UIKit
    class ViewController: UIViewController {
        @IBOutlet var buttonObject: UIButton!
        @IBOutlet var labelSwitch: UILabel!
        @IBOutlet var switchObject: UISwitch!
        @IBOutlet var segmentedControl: UISegmentedControl!
        override func viewDidLoad() {
            super.viewDidLoad()
            segmentedControl.insertSegment(withTitle: "Three", at: 2, animated: true)
            segmentedControl.setWidth(50, forSegmentAt: 0)
            segmentedControl.setWidth(50, forSegmentAt: 1)
            segmentedControl.setWidth(50, forSegmentAt: 2)
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func touchInside(_ sender: UIButton) {
            buttonObject.setTitle("New", for: UIControl.State.normal)
            switchObject.onTintColor = UIColor.red
            switchObject.tintColor = UIColor.blue
        }
        @IBAction func switchChanged(_ sender: UISwitch) {
            if switchObject.isOn {
                labelSwitch.text = "On"
            } else {
                labelSwitch.text = "Off"
            }
        }
        @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
            switch segmentedControl.selectedSegmentIndex {
            case 0:
                labelSwitch.text = "One"
            case 1:
                labelSwitch.text = "Two"
            default:
                labelSwitch.text = "Three"
            }
        }
    }    

# Connecting Multiple Objects to the Same IBAction Method

![329781_5_En_10_Fig9_HTML](https://user-images.githubusercontent.com/72447691/184674358-1c99f569-9457-4e9c-a3fa-a0e3153ae9c7.jpg)

-> Choosing the type of object an IBAction method can respond to


     @IBAction func buttonTapped(_ sender: UIButton) {
        }


     @IBAction func buttonTapped(_ sender: Any) {
        }

![329781_5_En_10_Fig10_HTML](https://user-images.githubusercontent.com/72447691/184674407-d5a3d973-c745-431d-8c80-dca7ff95b896.jpg)

->The Tag property can be modified in the Attributes Inspector pane


----

![329781_5_En_10_Fig11_HTML](https://user-images.githubusercontent.com/72447691/184674633-3e505354-aed8-4b44-9139-8173d0b73740.jpg)

->Connecting a second object to an existing IBAction method

![329781_5_En_10_Fig12_HTML](https://user-images.githubusercontent.com/72447691/184674731-ac3eca7d-d342-4130-ad97-3d659b0cd1a9.jpg)

->Verifying all objects connected to a single IBAction method

Modify the buttonTapped IBAction method as follows:

    @IBAction func buttonTapped(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 1:
            labelResult.text = "Button 1"
        case 2:
            labelResult.text = "Button 2"
        default:
            labelResult.text = "Default"
        }
    }
 

Modify the viewDidLoad method as follows:

    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.frame.size.width = 120
        // Do any additional setup after loading the view, typically from a nib.
    }
    
The entire ViewController.swift file should look like this:

    import UIKit
    class ViewController: UIViewController {
        @IBOutlet var labelResult: UILabel!
        override func viewDidLoad() {
            super.viewDidLoad()
            labelResult.frame.size.width = 120
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func buttonTapped(_ sender: Any) {
            switch (sender as AnyObject).tag {
            case 1:
                labelResult.text = "Button 1"
            case 2:
                labelResult.text = "Button 2"
            default:
                labelResult.text = "Default"
            }
        }
    }

NoteJust deleting an IBOutlet variable or IBAction method will not break its link to an object on the user interface. You must break the actual link in the Connections Inspector pane. If you fail to break the link in the Connections Inspector pane, running your app will not work and Xcode will display an error message.
--

![329781_5_En_10_Fig13_HTML](https://user-images.githubusercontent.com/72447691/184674999-b2bf1f8d-683e-48b3-92cb-48be2640c37a.jpg)

->The Connections Inspector pane displays all links to IBOutlets and IBAction methods

![329781_5_En_10_Fig14_HTML](https://user-images.githubusercontent.com/72447691/184675070-415234b9-e563-43f4-8859-fa29e74815e2.jpg)

->Connecting a button to an existing IBAction method
	
Edit the buttonRespond IBAction method as follows:

    @IBAction func buttonRespond(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            labelResult.text = sender.titleLabel?.text
        case 2:
            labelResult.text = sender.titleLabel?.text
        default:
            labelResult.text = "Default"
        }
    }
The entire ViewController.swift file should look like this:

    import UIKit
    class ViewController: UIViewController {
        @IBOutlet var labelResult: UILabel!
        override func viewDidLoad() {
            super.viewDidLoad()
            labelResult.frame.size.width = 120
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func buttonTapped(_ sender: Any) {
            switch (sender as AnyObject).tag {
            case 1:
                labelResult.text = "Button 1"
            case 2:
                labelResult.text = "Button 2"
            default:
                labelResult.text = "Default"
            }
        }
        @IBAction func buttonRespond(_ sender: UIButton) {
            switch sender.tag {
            case 1:
                labelResult.text = sender.titleLabel?.text
            case 2:
                labelResult.text = sender.titleLabel?.text
            default:
                labelResult.text = "Default"
            }
        }
    }
