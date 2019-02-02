//
//  InfoVC_Layout.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 29.09.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

extension Element_Information_ViewController {
    
    /**
        Shortname Corners
     */
    func shortnCorners() {
        element_Name.layer.cornerRadius = 5
        element_Name.layer.masksToBounds = true
    }
    
    /**
     Corners for Mainview
    */
    func mainViewCorners() {
        mainView.layer.cornerRadius = 11
        mainView.layer.masksToBounds = true
    }
    
    /**
    Corners Schalenmodell
    */
    func periodCorners() {
        schalenmodell.layer.cornerRadius = 5
        schalenmodell.layer.masksToBounds = true
    }
    
    /**
    Corners
    */
    func corners() {
        periodCorners()
        shortnCorners()
        mainViewCorners()
    }
    
    /**
     textFronts
    */
    func infoFont() {
        if UserDefaults.standard.value(forKey: "filter") as! String == "nichts" {
                info.font = info.font.withSize(15)
        } else {
            info.font = info.font.withSize(18.7)
        }
        
       
    }
}
