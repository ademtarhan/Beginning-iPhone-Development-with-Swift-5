# Beginning-iPhone-Development-with-Swift-5

#7.Using Common User Interface Objects


* The three most common types of user interface objects are
1-Labels
2-Text fields
3-Buttons

![329781_5_En_7_Fig1_HTML](https://user-images.githubusercontent.com/72447691/183830811-0efb8f82-0e44-433a-a687-73ea31fedc06.jpg)

-->Displaying information as text and a visual progress bar


![329781_5_En_7_Fig2_HTML](https://user-images.githubusercontent.com/72447691/183830857-b5245b85-a64b-4286-a2eb-950af6d57935.jpg)

-->A slider lets the user choose a numeric value without any typing


![329781_5_En_7_Fig3_HTML](https://user-images.githubusercontent.com/72447691/183830913-0c6bcc5e-32c3-4c63-801f-aa0b7d541bb4.jpg)

-->A slider lets the user choose a numeric value without any typing


#Using Labels

![329781_5_En_7_Fig5_HTML](https://user-images.githubusercontent.com/72447691/183831109-d67a27b2-9d3a-4f1b-9aed-2fe86601e9fb.jpg)

-->The attribute for modifying the text that appears in a label

![329781_5_En_7_Fig6_HTML](https://user-images.githubusercontent.com/72447691/183831178-4648e04d-29f5-4d8f-91cd-bb6d67d20ae7.jpg)

-->Defining a font and font size for text displayed in a label

![329781_5_En_7_Fig7_HTML](https://user-images.githubusercontent.com/72447691/183831219-53bbbf36-4129-41a8-9679-fa3580783aac.jpg)

-->Choosing Custom lets you define a font for text in a label

![329781_5_En_7_Fig8_HTML](https://user-images.githubusercontent.com/72447691/183831271-ebe8ae71-9efc-48a8-8b9f-f6d9f4585dd9.jpg)

-->The Enabled check box defines the appearance of text

![329781_5_En_7_Fig9_HTML](https://user-images.githubusercontent.com/72447691/183831296-90973b70-bdc1-43de-8e6c-79ef9eccfee1.jpg)

-->Choosing a background color for a label

![329781_5_En_7_Fig10_HTML](https://user-images.githubusercontent.com/72447691/183831383-6ad2d3f1-e495-4555-9501-b520e64d23f9.jpg)

-->Resizing a label

![329781_5_En_7_Fig11_HTML](https://user-images.githubusercontent.com/72447691/183831453-ce565d8c-1ab9-4a8a-bd5c-749c97c2bb3b.png)

-->Displaying text on two lines in a label


*To see how to change a label’s properties using Swift code

![329781_5_En_7_Fig12_HTML](https://user-images.githubusercontent.com/72447691/183831617-26817770-1d23-441c-a93d-befb4506feba.jpg)

-->Ctrl-dragging from the label to the ViewController.swift file

![329781_5_En_7_Fig13_HTML](https://user-images.githubusercontent.com/72447691/183831651-6edb6f07-193e-45e0-8165-8fd6795d1fa6.jpg)

-->A window appears to let you define an IBOutlet variable for the label

![329781_5_En_7_Fig14_HTML](https://user-images.githubusercontent.com/72447691/183831686-dc532632-0072-4c25-b5a7-2b1953acca60.jpg)

-->Ctrl-dragging from the button to the ViewController.swift file

![329781_5_En_7_Fig15_HTML](https://user-images.githubusercontent.com/72447691/183831738-e71d586d-ff61-461d-9b61-483a416a21ef.jpg)

-->Ctrl-dragging from a button to the ViewController.swift file

*Edit this changeLabel method 

        @IBAction func changeLabel(_ sender: UIButton) {
                myLabel.text = "Text created by Swift \ncode using Xcode"
                myLabel.numberOfLines = 2
                myLabel.font = UIFont(name: "Courier", size: 14)
                myLabel.backgroundColor = UIColor.yellow
                myLabel.isEnabled = false
        }


#Using Text Fields

* keyboardWillShowNotification
* keyboardWillHideNotification

1.	
Create a new iOS project using the Single View App template (see Chapter 1) and name this new project TextFieldApp. This creates a single view for the user interface.
 
2.	
Click the Main.storyboard file in the Navigator pane. Xcode displays the single view.
 
3.	
Click the Library icon to display the Object Library.

4.
![329781_5_En_7_Fig18_HTML](https://user-images.githubusercontent.com/72447691/183838407-102f2591-32ff-436f-a4a8-9b24476a1398.jpg)
Placing two text fields in the bottom one-third of the view

5.	
Choose Editor ➤ Resolve Auto Layout Issues ➤ Reset to Suggested Constraints in the bottom half of the submenu. This applies constraints to both text fields.
 
6.	
Click the ViewController.swift file in the Navigator pane.
 
7.	
Add the following inside the viewDidLoad method:

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

8.	
Add the following inside the viewDidLoad method :

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
This code allows the view to detect tap gestures (when the user taps outside of a text field). When this occurs, this line runs a function called dismissKeyboard . The entire viewDidLoad function should look like this:

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

9.
Type the following underneath the viewDidLoad function:

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    """
This function runs when the user taps outside of a text field, which ends editing and sends the notification that the virtual keyboard needs to go away (keyboardWillHideNotification).
 
10.	
Type the following underneath the dismissKeyboard function :

    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
"""

11.	
Type the following underneath the keyboardWillShow function :

    @objc func keyboardWillHide(notification: NSNotification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0
            }
        }
    }
    """
This function checks if the virtual keyboard is visible. If not, then do nothing. If the virtual keyboard is visible, then move the view back down to cover and hide the virtual keyboard. The entire ViewController.swift file should look like this:

        import UIKit
        class ViewController: UIViewController {
            override func viewDidLoad() {
                super.viewDidLoad()
                NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
                NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
                let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
                view.addGestureRecognizer(tap)
            }
            @objc func dismissKeyboard() {
                view.endEditing(true)
            }
            @objc func keyboardWillShow(notification: NSNotification) {
                if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                    if self.view.frame.origin.y == 0 {
                        self.view.frame.origin.y -= keyboardSize.height
                    }
                }
            }
            @objc func keyboardWillHide(notification: NSNotification) {
                if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
                    if self.view.frame.origin.y != 0 {
                        self.view.frame.origin.y = 0
                    }
                }
            }
        }
"""
 
12.	
Click the Run button or choose Product ➤ Run. The Simulator appears, displaying your two text fields near the bottom of the screen.


13.
![329781_5_En_7_Fig19_HTML](https://user-images.githubusercontent.com/72447691/183838974-582fd3b7-e84d-4b65-b765-b3dab93327de.jpg)

-->The virtual keyboard appears when the user clicks in a text field

14.	
Click the keys on the virtual keyboard to type a word in the text field.
 
15.	
Click in the second text field and type another word using the virtual keyboard.
 
16.	
Click anywhere outside of the text field. Notice that the virtual keyboard disappears.
 
17.	
Choose Simulator ➤ Quit Simulator to return to Xcode.


*Defining Different Keyboards

![329781_5_En_7_Fig20_HTML](https://user-images.githubusercontent.com/72447691/183839131-8581009b-65da-4b1d-9142-6d52d66093d5.jpg)

-->A numeric virtual keyboard

![329781_5_En_7_Fig21_HTML](https://user-images.githubusercontent.com/72447691/183839230-fc5d2dd6-44f4-4301-882f-190cb08a54fa.jpg)

-->Choosing different virtual keyboards to appear

![329781_5_En_7_Fig22_HTML](https://user-images.githubusercontent.com/72447691/183839274-75ffac2d-2417-4c52-a593-35be579c2d94.jpg)

-->The Numbers and Punctuation virtual keyboard



*Defining the Content of a Text Field

![329781_5_En_7_Fig23_HTML](https://user-images.githubusercontent.com/72447691/183839359-85fe3d73-c1a4-438c-8f1d-1a515875e070.jpg)

-->The Text Input Traits category on the Attributes Inspector pane

![329781_5_En_7_Fig24_HTML](https://user-images.githubusercontent.com/72447691/183839432-d02345ff-814e-4182-b368-eee17a6acda5.jpg)

-->Changing the content type of a text field to Password

![329781_5_En_7_Fig25_HTML](https://user-images.githubusercontent.com/72447691/183839483-f823749c-b85f-4418-b661-3001f02d1506.jpg)

-->Masking typed characters in a text field

![329781_5_En_7_Fig26_HTML](https://user-images.githubusercontent.com/72447691/183839536-0cfd1704-89cd-4bf9-ab2a-2deda80dab98.jpg)

-->Displaying a virtual keyboard with a Send return key

*Modifying the Appearance of a Text Field

        myTextField.placeholder = "Email address here"
        myTextField.textColor = UIColor.red
        myTextField.font = UIFont(name: "Courier", size: 16)
        myTextField.clearButtonMode = .whileEditing

        import UIKit
        class ViewController: UIViewController {
            @IBOutlet var myTextField: UITextField!
            override func viewDidLoad() {
                super.viewDidLoad()
                NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
                NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
                let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
                view.addGestureRecognizer(tap)
                myTextField.placeholder = "Email address here"
                myTextField.textColor = UIColor.red
                myTextField.font = UIFont(name: "Courier", size: 16)
                myTextField.clearButtonMode = .whileEditing
            }
            @objc func dismissKeyboard() {
                view.endEditing(true)
            }
            @objc func keyboardWillShow(notification: NSNotification) {
                if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                    if self.view.frame.origin.y == 0 {
                        self.view.frame.origin.y -= keyboardSize.height
                    }
                }
            }
            @objc func keyboardWillHide(notification: NSNotification) {
                if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil {
                    if self.view.frame.origin.y != 0 {
                        self.view.frame.origin.y = 0
                    }
                }
            }
        }


#Using Buttons

![329781_5_En_7_Fig27_HTML](https://user-images.githubusercontent.com/72447691/183839807-ca30f4b4-e56f-4899-a7e0-6e09299528d0.jpg)

-->Ctrl-dragging to create an IBAction method for the button

    @IBAction func displayPassword(_ sender: UIButton) {
    }

    @IBAction func displayPassword(_ sender: UIButton) {
        myTextField.text = passwordTextField.text?.uppercased()
    }

