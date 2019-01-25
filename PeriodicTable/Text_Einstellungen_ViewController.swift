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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.setOn((UserDefaults.standard.value(forKey: "text") as! Bool), animated: true)
        print(UserDefaults.standard.value(forKey: "text")!)
        layout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        text.setOn((UserDefaults.standard.value(forKey: "text") as! Bool), animated: true)
        view.reloadInputViews()
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        UserDefaults.standard.set(text.isOn, forKey: "text")
    }
    
    /**
     Corners
     */
    func layout() {
        settings.layer.cornerRadius = 10
        settings.layer.masksToBounds = true
    }
    
}
