//
//  ViewController.swift
//  hh
//
//  Created by nura on 11/17/19.
//  Copyright © 2019 nura. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
    var gender = ["male","female"]

    @IBOutlet weak var theheight: UITextField!
        @IBOutlet weak var gerenderlabel: UILabel!
    @IBOutlet weak var pickerview: UIPickerView!
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return gender.count
    }
    var selectedgender = 0
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedgender=row
       return gender[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       gerenderlabel.text = gender[row]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerview.delegate=self
        pickerview.dataSource=self
    }
    
    
    
    
    @IBOutlet weak var thebestweightlabel: UILabel!
    

    @IBAction func thebestweightbutton(_ sender: Any) {
        if theheight.text != ""{
        let height = Double(theheight.text!)!
        var bestweight  = 0.0
        if selectedgender == 0 {
            //male hight in cm
        bestweight = height - 101
            
        }else{//female
             bestweight = height - 105
            //weight in kg
           
        }
        thebestweightlabel.text = " the best weight is \(bestweight) Kg "
        }
    else{ thebestweightlabel.text = "please enter the height & the gender"
           }
        theheight.resignFirstResponder()
        
    }}


