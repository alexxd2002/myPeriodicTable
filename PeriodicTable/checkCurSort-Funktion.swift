//
//  File.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 18.02.19.
//  Copyright © 2019 Alexander Meinecke. All rights reserved.
//

import UIKit

extension Elemente_TableViewController {
    
    func checkCurSort() {
        
        if UserDefaults.standard.value(forKey: "sortCur") as! Int != UserDefaults.standard.value(forKey: "sort") as! Int {
            UserDefaults.standard.set(UserDefaults.standard.value(forKey: "sort") as! Int, forKey: "sortCur")
            tableView.reloadData()
        }
    }
    
    func checkSort() {
        if UserDefaults.standard.value(forKey: "sort") == nil {
            UserDefaults.standard.set(1, forKey: "sort")
            
            if UserDefaults.standard.value(forKey: "sortCur") == nil {
                UserDefaults.standard.set(1, forKey: "sortCur")
            }
            
        }
        
    }
    
    func  checkNil() {
        if UserDefaults.standard.value(forKey: "text") == nil {
            UserDefaults.standard.set(false, forKey: "text")
        }
        
        if UserDefaults.standard.value(forKey: "filter") == nil {
            UserDefaults.standard.set("nichts", forKey: "filter")
        }
    }
}
