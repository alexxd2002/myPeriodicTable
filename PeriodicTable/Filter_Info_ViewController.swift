//
//  Filter_Info_ViewController.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 02.02.19.
//  Copyright © 2019 Alexander Meinecke. All rights reserved.
//

import UIKit

class Filter_Info_ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    @IBOutlet weak var filterOptionPicker: UIPickerView!
    @IBOutlet weak var popupview: UIView!
    
    //Options
    let fOptions = ["Nichts", "Gewicht", "EN-Wert", "gefüllte Schalen", "Schmelz-/Siedepunkt", "Radioaktivität", "Dichte"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //corners
        popupview.layer.cornerRadius = 14
        popupview.layer.masksToBounds = true
    }
  
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Text Color
        filterOptionPicker.setValue(UIColor.white, forKey: "textColor")
        UserDefaults.standard.set("nichts", forKey: "filter")
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fOptions.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fOptions[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let def = UserDefaults.standard
        
        
        if fOptions[row] == fOptions[0] {
                def.set("nichts", forKey: "filter")
        } else if fOptions[row] == fOptions[1] {
                def.set("gewicht", forKey: "filter")
        } else if fOptions[row] == fOptions[2] {
                def.set("en", forKey: "filter")
        } else if fOptions[row] == fOptions[3] {
                def.set("schalen", forKey: "filter")
        } else if fOptions[row] == fOptions[4] {
                def.set("ss", forKey: "filter")
        } else if fOptions[row] == fOptions[5] {
                def.set("radio", forKey: "filter")
        } else if fOptions[row] == fOptions[6] {
                def.set("dichte", forKey: "filter")
        }
        
        print("Filter:  \(def.value(forKey: "filter")!)")
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = fOptions[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 15.0)!,NSAttributedString.Key.foregroundColor:UIColor.white])
        return myTitle
    }
}
