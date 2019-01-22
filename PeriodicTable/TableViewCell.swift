//
//  TableViewCell.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 15.08.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//
import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var Element_kurz: UILabel!
    @IBOutlet weak var Element_Name: UILabel!
    
    func setElement(element: Element) {
        Element_Name.text = element.name
        Element_kurz.text = element.kurz
    }
 }
