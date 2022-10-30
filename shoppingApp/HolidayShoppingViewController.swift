//
//  HolidayShoppingViewController.swift
//  shoppingApp
//
//  Created by mich on 25/10/2022.
//

import UIKit

class HolidayShoppingViewController:
    UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
 

    
    @IBOutlet weak var groceryListName: UITextField!
    
    @IBOutlet weak var groceryItem1: UITextField!
    @IBOutlet weak var groceryItem2: UITextField!
    @IBOutlet weak var groceryItem3: UITextField!
    @IBOutlet weak var groceryItem4: UITextField!
    @IBOutlet weak var groceryItem5: UITextField!
    
    @IBOutlet weak var groceryCount1: UILabel!
    @IBOutlet weak var groceryCount2: UILabel!
    @IBOutlet weak var groceryCount3: UILabel!
    @IBOutlet weak var groceryCount4: UILabel!
    @IBOutlet weak var groceryCount5: UILabel!
    

    
    @IBOutlet weak var groceryStepper1: UIStepper!
    @IBOutlet weak var groceryStepper2: UIStepper!
    @IBOutlet weak var groceryStepper3: UIStepper!
    @IBOutlet weak var groceryStepper4: UIStepper!
    @IBOutlet weak var groceryStepper5: UIStepper!

    @IBOutlet weak var reset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groceryListName.text = "holiday shopping list"
    }
    
  
    @IBAction func stepper_pressed(_ sender: UIStepper) {
   
    
//            groceryCount1.text = Int(sender.value).description
 //set the label on what stepper is clicked
         let stepperPressed = sender as UIStepper
       
        if (stepperPressed == groceryStepper1){
            groceryCount1.text = Int(sender.value).description
        }
        else if (stepperPressed == groceryStepper2){
            groceryCount2.text = Int(sender.value).description}
        else if (stepperPressed == groceryStepper3){
            groceryCount3.text = Int(sender.value).description
        }
        else if (stepperPressed == groceryStepper4){
            groceryCount4.text = Int(sender.value).description
        }
        else if (stepperPressed == groceryStepper5){
            groceryCount5.text = Int(sender.value).description
        }
//        for i in 1...6{
//
//        }
        
        print (stepperPressed)
        print(stepperPressed.value)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 0
    }
    

    @IBAction func reset_pressed(_ sender: UIButton) {
        groceryItem1.text = ""
        groceryCount1.text = "0"
        groceryStepper1.value = 0
        
        groceryItem2.text = ""
        groceryCount2.text = "0"
        groceryStepper2.value = 0
        
        groceryItem3.text = ""
        groceryCount3.text = "0"
        groceryStepper3.value = 0
        
        groceryItem4.text = ""
        groceryCount4.text = "0"
        groceryStepper4.value = 0
        
        
        groceryItem5.text = ""
        groceryCount5.text = "0"
        groceryStepper5.value = 0
    }
    

}
