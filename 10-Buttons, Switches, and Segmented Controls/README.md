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






''' swift
  @IBAction func touchInside(_ sender: UIButton) {
        buttonObject.setTitle("New", for: UIControl.State.normal)
    }
'''



