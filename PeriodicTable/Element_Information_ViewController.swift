//
//  Element_Information_ViewController.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 19.08.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

class Element_Information_ViewController: UIViewController {
    
    var elements: [Element] = []
    var ArrayIndex: Int!
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var element_Name: UILabel!
    @IBOutlet weak var element_kurz: UILabel!
    @IBOutlet weak var info: UILabel!
    
    
    
    @IBOutlet weak var schalenmodell: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Layout
        corners()
        
        //Show information
        NameNum()
        info.text = infoText(text: UserDefaults.standard.value(forKey: "text") as! Bool)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Period_ViewController {
            print(destination)
            destination.oz = elements[ArrayIndex].oz
            destination.nameElement = elements[ArrayIndex].name
            destination.periodElement = elements[ArrayIndex].schale
            destination.hg = elements[ArrayIndex].hgruppe
            
        }
        
        
    }
}



