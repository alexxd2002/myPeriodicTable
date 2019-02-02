//
//  Text_Einstellungen_ViewController.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 12.10.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

class Text_Einstellungen_ViewController: UIViewController {
    
    @IBOutlet weak var text: UISwitch!
    @IBOutlet weak var settings: UIView!
    @IBOutlet weak var filter: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.setOn((UserDefaults.standard.value(forKey: "text") as! Bool), animated: true)
        print(UserDefaults.standard.value(forKey: "text")!)
        layout()
        filterCheck()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        text.setOn((UserDefaults.standard.value(forKey: "text") as! Bool), animated: true)
        view.reloadInputViews()
        filterCheck()
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        checkText()
        
    }
    
    func checkText() {
        UserDefaults.standard.set(text.isOn, forKey: "text")
        
        if text.isOn == true {
            UserDefaults.standard.set("nichts", forKey: "filter")
            filter.isOn = false
        }
    }
    
    /**
     Corners
     */
    func layout() {
        settings.layer.cornerRadius = 10
        settings.layer.masksToBounds = true
    }
    
    
    func filterCheck() {
        if UserDefaults.standard.value(forKey: "filter") as! String == "nichts" {
            filter.isOn = false
            
        } else {
            filter.isOn = true
            text.isOn = false
        }
    }
}
