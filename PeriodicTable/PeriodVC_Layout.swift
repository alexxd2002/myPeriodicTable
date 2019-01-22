//
//  PeriodVC_Layout.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 01.10.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

extension Period_ViewController {
    
    /**
     Popup runden
    */
    func popLay() {
        popup.layer.cornerRadius = 14
        popup.layer.masksToBounds = true
    }
    
    /**
     Image runden
    */
    func imageLay() {
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
    }
    
    /**
     Urheberinfomationen
    */
    func copyrightLay() {
        urheberinfo.layer.cornerRadius = 10
        urheberinfo.layer.masksToBounds = true
    }
    
    /**
     Runden
    */
    func layout() {
        popLay()
        imageLay()
        copyrightLay()
    }
}
