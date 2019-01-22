//
//  Element.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 19.08.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

class Element {
    
    var name: String
    var kurz: String
    var gewicht: Float
    var en: Float?
    var radioakt: String?
    var hgruppe: Int?
    var ngruppe: Int?
    var schale: Int
    var dichte: Float?
    var schmelzpunkt: Int?
    var siedepunkt: Int?
    var oz: Int
    
    init(name: String, kurz: String, gewicht: Float, en: Float?, radioakt: String?, hgruppe: Int? ,ngruppe: Int?, schale: Int, dichte: Float?, schmelzpunkt: Int?, siedepunkt: Int?, oz: Int) {
        self.name = name
        self.kurz = kurz
        self.gewicht = gewicht
        self.en = en
        self.radioakt = radioakt
        self.hgruppe = hgruppe
        self.ngruppe = ngruppe
        self.schale = schale
        self.dichte = dichte
        self.schmelzpunkt = schmelzpunkt
        self.siedepunkt = siedepunkt
        self.oz = oz
    }
}
