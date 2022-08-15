# Beginning-iPhone-Development-with-Swift-5

# 9.Image Views and Text Views


# Using Image Views

![329781_5_En_9_Fig1_HTML](https://user-images.githubusercontent.com/72447691/184143408-c57deef8-f114-49ce-9f33-d496d0ccbd44.jpg)

Dragging and dropping an image to an Xcode project


![329781_5_En_9_Fig2_HTML](https://user-images.githubusercontent.com/72447691/184143735-c2d1c1d1-5a3d-4222-803f-99dc51235f13.jpg)

Storing a graphic image in an Xcode project


![329781_5_En_9_Fig3_HTML](https://user-images.githubusercontent.com/72447691/184143870-52f12253-fd06-4371-a8b5-e0260e3bd04d.jpg)

Selecting a graphic image to display in an image view

![329781_5_En_9_Fig4_HTML](https://user-images.githubusercontent.com/72447691/184143931-a4dd46d7-2a53-4ab7-9513-735d5ed3fcb3.jpg)

Aspect Fit may leave empty space inside the image view


- Aspect Fill – Expands an image to fill the width or height of an image view. This means the image may extend over the width or height of the image view.

-Redraw – Stretches the image to fill the width and height of the image view.

-Center – Displays the image center within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.

-Top – Displays the image top within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.

-Bottom – Displays the image bottom within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.

-Left – Displays the image left center within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.

-Right – Displays the image right center within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.

-Top Left – Displays the top left of the image within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.

-Top Right – Displays the top right of the image within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.

-Bottom Left – Displays the bottom left of the image within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.

-Bottom Right – Displays the bottom right of the image within the image view. If the image is larger than the image view, then the rest of the image appears outside of the image view.


# Making the Image View Interactive

![329781_5_En_9_Fig5_HTML](https://user-images.githubusercontent.com/72447691/184144329-daca2e3b-8921-4c0e-b8d1-9b9ca002d42c.jpg)

Allowing an image view to respond to touch gestures

---

  @IBOutlet var imageView: UIImageView!

---

   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if touch?.view == imageView {
            print ("Touched")
        } else {
            print ("Nothing ")
        }
    }
    
---

  import UIKit
  class ViewController: UIViewController {
      @IBOutlet var imageView: UIImageView!
      override func viewDidLoad() {
          super.viewDidLoad()
          imageView.isUserInteractionEnabled = true
          // Do any additional setup after loading the view, typically from a nib.
      }
      override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
          let touch = touches.first
          if touch?.view == imageView {
              print ("Touched")
          } else {
              print ("Nothing ")
          }
      }
  }



# Using a Text View


![329781_5_En_9_Fig6_HTML](https://user-images.githubusercontent.com/72447691/184144864-2b52c316-0d53-40d1-8c92-867353b00a4a.jpg)

Making a text view editable

---

  @IBOutlet var textView: UITextView!


---

  @IBOutlet var buttonObject: UIButton!
  
---
  @IBAction func buttonTapped(_ sender: UIButton) {
  }
  
---
  
  @IBAction func buttonTapped(_ sender: UIButton) {
        if textView.isEditable == true {
            textView.isEditable = false
        } else {
            textView.isEditable = true
        }
    }
---

NoteWhen assigning a value to a variable, you use a single (=) equal sign, but when comparing two values, you use a double equal sign (==).
--

'''
  import UIKit
  class ViewController: UIViewController {
      @IBOutlet var textView: UITextView!
      @IBOutlet var buttonObject: UIButton!
      override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view, typically from a nib.
      }
      @IBAction func buttonTapped(_ sender: UIButton) {
          if textView.isEditable == true {
              textView.isEditable = false
          } else {
              textView.isEditable = true
          }
      }
  }
'''
