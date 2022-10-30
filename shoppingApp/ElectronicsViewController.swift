//
//  ElectronicsViewController.swift
//  shoppingApp
//
//  Created by mich on 25/10/2022.
//

import UIKit

class ElectronicsViewController:
    UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
 
    
    @IBOutlet weak var reset: UIButton!
    
    @IBOutlet weak var SinglePicker: UIPickerView!
    let decisionState = ["sure","maybe", "maybe not", "future" ]
    
    @IBOutlet weak var listName: UITextField!
    
    @IBOutlet weak var elecItem1: UITextField!
    
    @IBOutlet weak var elecItem2: UITextField!
    
    @IBOutlet weak var elecItem3: UITextField!
    
    @IBOutlet weak var elecItem4: UITextField!
    
    @IBOutlet weak var elecItem5: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listName.text = "Shopping List Electronics"
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
     return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return decisionState.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return decisionState[row]
       }
    
    @IBAction func onSubmitPressed(_ sender: UIButton) {
        let decisionMade = SinglePicker.selectedRow(inComponent: 0)
//        let selected = decisionState[decisionMade]
//        let selected =   elecItem1, ",", elecItem2, ",", elecItem3, ",", elecItem4, ",", elecItem5

      
        if (elecItem1.text != nil || elecItem2.text != nil || elecItem3.text != nil ||  elecItem4.text != nil  || elecItem5.text  != nil ){
           
            
        
        let selected = "\(elecItem1.text!), \(elecItem2.text!), \(elecItem3.text!), \(elecItem4.text!),\(elecItem5.text!)"
            
    // alt way:
    // let defaultItemForNil = ""
    //  let item1 = elecItem1.text     // doesn't need to assign an new variable too
    // let selected = "\(item1 ?? defaultItemForNil), \(elecItem2.text ?? defaultItemForNil), \(elecItem3.text!), \(elecItem4.text!),\(elecItem5.text!)"
        
// don't work in these ways:
//selected.append(elecItem1).append(elecItem2).append(elecItem3).append(elecItem4).append(elecItem5)
// let selected = elecItem1.text + ","+ elecItem2.text+ ","+ elecItem3.text+ ","+ elecItem4.text+ ","+ elecItem5.text

      
                let title = "You want to buy \(selected)!"

                let alert = UIAlertController(
                    title: title,
                    message: "Happy Shopping",
                    preferredStyle: .alert)
                let action = UIAlertAction(
                    title: "Close",
                    style: .default,
                    handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func reset_pressed(_ sender: UIButton) {

        elecItem1.text = ""
        elecItem2.text = ""
        elecItem3.text = ""
        elecItem4.text = ""
        elecItem5.text = ""
        
        SinglePicker.selectRow(0, inComponent: 0, animated: false) // reset picker1 only
        
    }
    
    
}
