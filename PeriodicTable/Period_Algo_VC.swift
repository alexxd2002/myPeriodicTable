//
//  Period_Algo_VC.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 01.10.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

extension Period_ViewController {
    
    /**
     Show current element
    */
    func curElementImage() {
        self.image.image = UIImage(named: "\(oz)")
    }
    
    /**
     Show name
    */
    func showName() {
        name.text = nameElement
    }
    
    /**
     Show period Sing/pl
    */
    func showPeriod() {
        if periodElement == 1 {
            period.text = "\(periodElement) Schale"
        } else if periodElement > 1{
            period.text = "\(periodElement) Schalen"
        }
    }
    
    /**
     Übergangsoption Hauptgruppen Valzensschale für KLMN-Lbl
     */
    func valenz(hg: Int?, oz: Int) {
        
        if oz == 2 {
            KLMN.text = "Hat 2 Elektronen in Valzenschale"
        } else if hg != nil && hg != 1 && oz != 2 {
            KLMN.text = "Hat \(hg!) Elektronen in Valzenschale"
        } else if hg != nil && hg == 1 {
            KLMN.text = "Hat \(hg!) Elektron in Valzenschale"
        } else if hg == nil {
            KLMN.text = "Hat 2 Elektronen in Valzenschale" //Ungenau
        }
    
    /**
     KLMNOP Schalen auswerten Nicht fertig!!!!
    */
    func placePeriod(periodelement: Int, hg: Int?) {
        var k = 0
        var l = 0
        var m = 0
        var n = 0
        var o = 0
        var p = 0
        var q = 0
        
        var vElektornen = oz
        var schalen = periodelement
        
        if hg != nil && hg! > 1 {
            if schalen == 2 {
                l = hg!
            } else if schalen == 3 {
                m = hg!
                vElektornen -= hg!
            } else if schalen == 4 {
                n = hg!
                vElektornen -= hg!
            } else if schalen == 5 {
                o = hg!
                vElektornen -= hg!
            } else if schalen == 6 {
                p = hg!
                vElektornen -= hg!
            } else if schalen == 7 {
                q = hg!
                vElektornen -= hg!
            }
        }
        
        if vElektornen > 0 {
        
            for i in 1...oz {
                if k < 2 {
                    k += 1
                    vElektornen -= 1
                } else if k == 2 && l < Int(8 - hg!) {
                    l += 1
                    vElektornen -= 1
                } else if k == 2 && l == 8 && m < Int(18 - hg!) {
                    m += 1
                    vElektornen -= 1
                } else if k == 2 && l == 8 && m == 18 && n < Int(32 - hg!) {
                    n += 1
                    vElektornen -= 1
                } else if k == 2 && l == 8 && m < 18 && n == 32 && o < Int(50 - hg!) {
                    o += 1
                    vElektornen -= 1
                } else if k == 2 && l == 8 && m == 18 && n == 32 && o == 50 && p < Int(72 - hg!) {
                    p += 1
                    vElektornen -= 1
                } else if k == 2 && l == 8 && m == 18 && n == 32 && o == 50 && p == 72 && p < Int(98 - hg!) {
                    q += 1
                    vElektornen -= 1
                }
                print("k:\(k), l:\(l), m:\(m), n:\(n), n:\(o), n:\(p), n:\(q)")
            }
        }
    }
}
}
