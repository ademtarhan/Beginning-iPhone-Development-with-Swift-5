# Beginning-iPhone-Development-with-Swift-5

# 8.Steppers, Sliders, Progress Views, and Activity Indicator Views

1-Steppers
2-Sliders
3-Progress Views
4-Activity Indicator Views


# Using Steppers

![329781_5_En_8_Fig1_HTML](https://user-images.githubusercontent.com/72447691/184127421-d8ee43ab-5117-44ce-b539-be19e1985dcd.jpg)

Modifying attributes for a stepper in the Inspector pane

'''
  @IBOutlet var labelValue: UILabel!
'''
  
'''
  @IBOutlet var stepperValue: UIStepper!
'''

'''
  @IBAction func stepperChanged(_ sender: UIStepper) {
      }
'''
'''
  @IBAction func changeStepper(_ sender: UIButton) {
      }
'''

'''
  @IBAction func stepperChanged(_ sender: UIStepper) {
          labelValue.text = "\(stepperValue.value)"
      }
'''

* Note The “\()” symbol is called string interpolation. You can place any value inside the parentheses to convert that value into a string.


* To see how to change a stepper’s properties using Swift code, follow these steps:


'''
  @IBAction func changeStepper(_ sender: UIButton) {
          stepperValue.minimumValue = -10
          stepperValue.maximumValue = -5
          stepperValue.stepValue = 0.5
          stepperValue.isContinuous = true
          stepperValue.autorepeat = true
          stepperValue.wraps = true
  }
'''
'''
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
'''
