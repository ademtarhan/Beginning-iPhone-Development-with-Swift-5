# Beginning-iPhone-Development-with-Swift-5

# 8.Steppers, Sliders, Progress Views, and Activity Indicator Views

1-Steppers
2-Sliders
3-Progress Views
4-Activity Indicator Views


# Using Steppers

![329781_5_En_8_Fig1_HTML](https://user-images.githubusercontent.com/72447691/184127421-d8ee43ab-5117-44ce-b539-be19e1985dcd.jpg)

Modifying attributes for a stepper in the Inspector pane
--

    @IBOutlet var labelValue: UILabel!

-------

    @IBOutlet var stepperValue: UIStepper!
  
--------

    @IBAction func stepperChanged(_ sender: UIStepper) {
    }
--------

    @IBAction func changeStepper(_ sender: UIButton) {
    }
--------

    @IBAction func stepperChanged(_ sender: UIStepper) {
            labelValue.text = "\(stepperValue.value)"
    }
        

Note The “\()” symbol is called string interpolation. You can place any value inside the parentheses to convert that value into a string.
--

To see how to change a stepper’s properties using Swift code, follow these steps:
--


      @IBAction func changeStepper(_ sender: UIButton) {
              stepperValue.minimumValue = -10
              stepperValue.maximumValue = -5
              stepperValue.stepValue = 0.5
              stepperValue.isContinuous = true
              stepperValue.autorepeat = true
              stepperValue.wraps = true
      }
--------------

      import UIKit
      class ViewController: UIViewController {
          @IBOutlet var labelValue: UILabel!
          @IBOutlet var stepperValue: UIStepper!
          override func viewDidLoad() {
              super.viewDidLoad()
              // Do any additional setup after loading the view, typically from a nib.
          }
          @IBAction func stepperChanged(_ sender: UIStepper) {
              labelValue.text = "\(stepperValue.value)"
          }
          @IBAction func changeStepper(_ sender: UIButton) {
              stepperValue.minimumValue = -10
              stepperValue.maximumValue = -5
              stepperValue.stepValue = 0.5
              stepperValue.isContinuous = true
              stepperValue.autorepeat = true
              stepperValue.wraps = true
          }
      }


# Using Sliders


- A thumb
- A minimum track
- A maximum track


![329781_5_En_8_Fig3_HTML](https://user-images.githubusercontent.com/72447691/184129945-6641aadd-29ba-49de-9425-891c3744573e.jpg)

The three parts of a slider


To see how to use a slider, follow these steps:
--
1.	
Create a new iOS project using the Single View App template (see Chapter 1) and name this new project SliderApp. This creates a single view for the user interface.
 
2.	
Click the Main.storyboard file in the Navigator pane. Xcode displays the single view.
 
3.	
Click the Library icon to display the Object Library.
 
4.	
Drag and drop a label, a button, and a slider onto the view.
 
5.	
Expand the width of the slider to make it longer.
 
6.	
Choose Editor ➤ Resolve Auto Layout Issues ➤ Reset to Suggested Constraints in the bottom half of the submenu. This applies constraints to the label, button, and slider.
 
7.	
Choose View ➤ Assistant Editor ➤ Show Assistant Editor, or click the Assistant Editor icon. Xcode displays the Main.storyboard and ViewController.swift file side by side.
 
8.	
Move the mouse pointer over the label, hold down the Control key, and Ctrl-drag from the label to the ViewController.swift file underneath the “class ViewController” line.
 
9.	
Release the Control key and the left mouse button. A popup window appears.
 
10.	
Click in the Name text field, type labelValue, and click the Connect button. Xcode creates an IBOutlet variable as follows:

    @IBOutlet var labelValue: UILabel!
 
11.	
Move the mouse pointer over the slider, hold down the Control key, and Ctrl-drag from the slider to the ViewController.swift file underneath the IBOutlet line.
 
12.	
Release the Control key and the left mouse button. A popup window appears.
 
13.	
Click in the Name text field, type sliderValue, and click the Connect button. Xcode creates an IBOutlet variable as follows:

    @IBOutlet var sliderValue: UISlider!
 
14.	
Move the mouse pointer over the button, hold down the Control key, and Ctrl-drag from the button to the ViewController.swift file above the last curly bracket at the bottom of the file.
 
15.	
Release the Control key and the left mouse button. A popup window appears.
 
16.	
Click in the Name text field, type changeSlider, click the Type popup menu and choose UIButton, and click the Connect button. Xcode creates an IBAction method as follows:

    @IBAction func changeSlider(_ sender: UIButton) {
    }
 
17.	
Move the mouse pointer over the slider, hold down the Control key, and Ctrl-drag from the slider to the ViewController.swift file above the last curly bracket at the bottom of the file.
 
18.	
Release the Control key and the left mouse button. A popup window appears.
 
19.	
Click in the Name text field, type sliderValueChanged, click the Type popup menu and choose UISlider, and click the Connect button. Xcode creates an IBAction method as follows:

    @IBAction func sliderValueChanged(_ sender: UISlider) {
    }
 
20.	
Choose View ➤ Standard Editor ➤ Show Standard Editor, or click the Standard Editor icon in the upper right corner of the Xcode window.
 
21.	
Click the ViewController.swift file in the Navigator pane to edit it.
 
22.	
Modify the sliderValueChanged method as follows:

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        labelValue.text = "\(sliderValue.value)"
    }
    
The entire ViewController.swift file should look like this:
--
    import UIKit
    class ViewController: UIViewController {
        @IBOutlet var labelValue: UILabel!
        @IBOutlet var sliderValue: UISlider!
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func changeSlider(_ sender: UIButton) {
        }
        @IBAction func sliderValueChanged(_ sender: UISlider) {
            labelValue.text = "\(sliderValue.value)"
        }
    }
 
23.	
Click the Run button or choose Product ➤ Run. The Simulator window appears.
 
24.	
Drag the slider left and right. Notice that if you drag the slider thumb to the far left, the value 0 (zero) appears in the label, but if you drag the thumb to the far right, the value of 1.0 appears. That’s because the default minimum and maximum values of the slider are 0 and 1, respectively.
 
25.	
Choose Simulator ➤ Quit Simulator to return to Xcode.


Modifying a Slider with Swift Code
--

*.value – Defines the initial value displayed by the slider
*.minimumValue – Defines the minimum value the slider can represent
*.maximumValue – Defines the maximum value the slider can represent
*.thumbTintColor – Defines the color of the thumb on the slider
*.minimumTrackTintColor – Defines the color of the minimum track
*.maximumTrackTintColor – Defines the color of the maximum track

To see how to use Swift code to modify a slider, follow these steps:
--

1.	
Make sure the SliderApp project is loaded in Xcode.
 
2.	
Click the ViewController.swift file in the Navigator pane to edit the ViewController.swift file.
 
3.	
Modify the changeSlider IBAction method as follows:

    @IBAction func changeSlider(_ sender: UIButton) {
        sliderValue.minimumValue = 1
        sliderValue.maximumValue = 25
        sliderValue.value = 7
        sliderValue.minimumTrackTintColor = UIColor.red
        sliderValue.maximumTrackTintColor = UIColor.green
        sliderValue.thumbTintColor = UIColor.black
    }
    
The entire ViewController.swift file should look like this:

    import UIKit
    class ViewController: UIViewController {
        @IBOutlet var labelValue: UILabel!
        @IBOutlet var sliderValue: UISlider!
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func changeSlider(_ sender: UIButton) {
            sliderValue.minimumValue = 1
            sliderValue.maximumValue = 25
            sliderValue.value = 7
            sliderValue.minimumTrackTintColor = UIColor.red
            sliderValue.maximumTrackTintColor = UIColor.green
            sliderValue.thumbTintColor = UIColor.black
        }
        @IBAction func sliderValueChanged(_ sender: UISlider) {
            labelValue.text = "\(sliderValue.value)"
        }
    }
 
4.	
Click the Run button or chose Product ➤ Run. The Simulator window appears.
 
5.	
Drag the slider left and right. Notice that the label displays a value between 0 and 1, which are the minimum and maximum values defined by the Attributes Inspector pane.
 
6.	
Click the button. This runs the Swift code to modify the slider.
 
7.	
Drag the slider left and right. Notice that the label now displays a value between 1 and 25. In addition, the slider appears with the thumb, minimum track, and maximum track displayed in different colors.
 
8.	
Choose Simulator ➤ Quit Simulator to return to Xcode.

# Using the Progress and Activity Indicator Views

* The Progress View shows how far a task has been completed, while an Activity Indicator View does not.
* The Activity Indicator View constantly shows that something is happening, while a Progress View may not.

![329781_5_En_8_Fig4_HTML](https://user-images.githubusercontent.com/72447691/184130953-0ea9fcba-3629-4dc6-acbd-be612cec6acd.png)

Dragging the Activity Indicator View from the Object Library window to the user interface

---

    @IBOutlet var activityView: UIActivityIndicatorView!

---

     @IBAction func runButton(_ sender: UIButton) {
    }
   
---

    var counter = 0
    
---

    activityView.hidesWhenStopped = true

---

    @IBAction func runButton(_ sender: UIButton) {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.activityView.startAnimating()
            self.counter += 1
            if self.counter >= 5 {
                self.activityView.stopAnimating()
                timer.invalidate()
            }
        }
    }

---

    import UIKit
    class ViewController: UIViewController {
        var counter = 0
        @IBOutlet var activityView: UIActivityIndicatorView!
        override func viewDidLoad() {
            super.viewDidLoad()
            activityView.hidesWhenStopped = true
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func runButton(_ sender: UIButton) {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                self.activityView.startAnimating()
                self.counter += 1
                if self.counter >= 5 {
                    self.activityView.stopAnimating()
                    timer.invalidate()
                    self.counter = 0
                }
            }
        }
    }
    
# Using a Progress View

![329781_5_En_8_Fig5_HTML](https://user-images.githubusercontent.com/72447691/184131734-52284587-8b51-40c4-9249-24001f48a6ab.jpg)

Organizing the Progress View in between the label and stepper

---
    @IBOutlet var progressView: UIProgressView!

---

    @IBOutlet var stepperObject: UIStepper!

---

    @IBAction func stepperChanged(_ sender: UIStepper) {
    }

---

    @IBAction func stepperChanged(_ sender: UIStepper) {
        labelProgress.text = "Completed \(Int(stepperObject.value * 10)) of 10 tasks"
        progressView.progress = Float(stepperObject.value)
    }

---

    progressView.progress = 0
    stepperObject.stepValue = 0.1
    stepperObject.maximumValue = 1.0
---

    import UIKit
    class ViewController: UIViewController {
        var counter = 0
        @IBOutlet var labelProgress: UILabel!
        @IBOutlet var progressView: UIProgressView!
        @IBOutlet var stepperObject: UIStepper!
        @IBOutlet var activityView: UIActivityIndicatorView!
        override func viewDidLoad() {
            super.viewDidLoad()
            activityView.hidesWhenStopped = true
            progressView.progress = 0
            stepperObject.stepValue = 0.1
            stepperObject.maximumValue = 1.0
            // Do any additional setup after loading the view, typically from a nib.
        }
        @IBAction func runButton(_ sender: UIButton) {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                self.activityView.startAnimating()
                self.counter += 1
                if self.counter >= 5 {
                    self.activityView.stopAnimating()
                    timer.invalidate()
                    self.counter = 0
                }
            }
        }
        @IBAction func stepperChanged(_ sender: UIStepper) {
            labelProgress.text = "Completed \(Int(stepperObject.value * 10)) of 10 tasks"
            progressView.progress = Float(stepperObject.value)
        }
    }


![329781_5_En_8_Fig6_HTML](https://user-images.githubusercontent.com/72447691/184132204-a5195ad9-9ba6-482e-a136-c535952dda42.jpg)

Using the stepper to increase/decrease values in the label and the Progress View
