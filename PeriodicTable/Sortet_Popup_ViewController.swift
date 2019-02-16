//
//  Sortet_Popup_ViewController.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 29.09.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

class Sortet_Popup_ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var sortetOptionPicker: UIPickerView!
    @IBOutlet weak var popupview: UIView!
    
    //Options
    let sOptions = ["Normal", "Nach Alphabet", "Nach Dichte"]
    
    //Destination TableView
    let destination = Elemente_TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(1, forKey: "sort")
       
        //corners
        popupview.layer.cornerRadius = 14
        popupview.layer.masksToBounds = true
        
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Text Color
        sortetOptionPicker.setValue(UIColor.white, forKey: "textColor")
        }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sOptions.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if sOptions[row] == "Normal" {
            destination.sort = 1
            UserDefaults.standard.set(1, forKey: "sort")
        } else if sOptions[row] == "Nach Alphabet" {
            destination.sort = 2
            UserDefaults.standard.set(2, forKey: "sort")
        } else if sOptions[row] == "Nach Dichte" {
            destination.sort = 3
            UserDefaults.standard.set(3, forKey: "sort")
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sOptions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = sOptions[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 15.0)!,NSAttributedString.Key.foregroundColor:UIColor.white])
        return myTitle
    }
    
}
