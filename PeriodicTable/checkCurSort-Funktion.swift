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
    
}
