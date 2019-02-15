//
//  ViewController.swift
//  The ArithMETic App
//
//  Created by Sai Sri Lakshmi on 14/02/19.
//  Copyright © 2019 Sai Sri Lakshmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
  var SelectedActivity = "Select Activity"
    let activitys:[String] = ["Select Activity","Bicycling","Jumping rope","Running - slow","Running - fast","Tennis","Swimming"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activitys.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SelectedActivity = activitys[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activitys[row]
    }
    
    
    @IBOutlet weak var excercisePV: UIPickerView!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var excerciseTF: UITextField!
    
    @IBOutlet weak var energycountLB: UILabel!
    @IBOutlet weak var timeLB: UILabel!
    
    
    @IBAction func Calculate(_ sender: Any) {
        
        let weightinLBS = Double(weightTF.text!)
        let timeinMIN = Double(excerciseTF.text!)
        
        if weightinLBS == nil || timeinMIN == nil || SelectedActivity == "Select Activity"{
            
        }else{
            let energyConsumed = ExerciseCoach.energyConsumed(during: SelectedActivity, weight: weightinLBS!, time: timeinMIN!)
            let timeToLose1Pound = ExerciseCoach.timeToLose1Pound(during:SelectedActivity,weight:weightinLBS!)
            energycountLB.text = "\(energyConsumed) cal"
            timeLB.text = "\(timeToLose1Pound) minutes"
        }
        
        
        
        
    }
    
    
    @IBAction func Clear(_ sender: Any) {
    
    SelectedActivity = "Select Activity"
        weightTF.text = ""
        excerciseTF.text = ""
        energycountLB.text = "0 cal"
        timeLB.text = "0 minutes"
        excercisePV.selectRow(0, inComponent: 0, animated: true)
    
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


}

}
