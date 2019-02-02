//
//  File.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 29.09.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

extension Element_Information_ViewController {
    
    /**
     Nummer im PS & Abkürzung & Name (Lang)
     */
    func NameNum() {
        
        //Abkürzung & Ordnungszahl
        element_Name.text = elements[ArrayIndex].kurz
        //Name (Lang)
        element_kurz.text = "\(elements[ArrayIndex].name) (\(elements[ArrayIndex].oz))"
        
    }
    
    /**
     Atommasse
     */
    func Unit() -> String {
        return String(elements[ArrayIndex].gewicht)
    }
    
    /**
     Elektonegativitätswert text
     */
    func ElektonegativitätswertTxt() -> String {
        //Elektonegativitätswert
        if elements[ArrayIndex].en == nil && elements[ArrayIndex].oz < 103 {
            return "Elektronegativitätswert ist nicht vorhanden"
        } else if elements[ArrayIndex].oz > 103 && elements[ArrayIndex].en == nil && elements[ArrayIndex].oz != 118 {
            return "Elektronegativitätswert ist unbekannt"
        } else if elements[ArrayIndex].oz == 118 {
            return "Elektronegativitätswert ist nicht vorhanden"
        } else {
            return "Elektronegativitätswert beträgt \(elements[ArrayIndex].en!)"
        }
    }
    
    /**
     Elektonegativitätswert
     */
    func Elektonegativitätswert() -> String {
        //Elektonegativitätswert
        if elements[ArrayIndex].en == nil && elements[ArrayIndex].oz < 103 {
            return "nicht vorhanden"
        } else if elements[ArrayIndex].oz > 103 && elements[ArrayIndex].en == nil && elements[ArrayIndex].oz != 118 {
            return "nicht bekannt"
        } else if elements[ArrayIndex].oz == 118 {
            return "nicht vorhanden"
        } else {
            return "\(elements[ArrayIndex].en!)"
        }
    }
    
    /**
     Neben_Haubtgruppen
     */
    func groups() -> String {
        
        //Neben- Hauptgruppen
        if elements[ArrayIndex].hgruppe == nil {
            return "\(elements[ArrayIndex].ngruppe!). Nebengruppe"
        } else {
            //Hauptgruppen Fachbegriffen
            if elements[ArrayIndex].hgruppe == 1 {
                return "\(elements[ArrayIndex].hgruppe!). Hauptgruppe (Alkalimetalle)"
            } else if elements[ArrayIndex].hgruppe == 2 {
                return "\(elements[ArrayIndex].hgruppe!). Hauptgruppe (Erdalkalimetalle)"
            } else if elements[ArrayIndex].hgruppe == 3 {
                return "\(elements[ArrayIndex].hgruppe!). Hauptgruppe (Borgruppe)"
            } else if elements[ArrayIndex].hgruppe == 4 {
                return "\(elements[ArrayIndex].hgruppe!). Hauptgruppe (Kohlenstoffgruppe)"
            } else if elements[ArrayIndex].hgruppe == 5 {
                return "\(elements[ArrayIndex].hgruppe!). Hauptgruppe (Stickstoffgruppe)"
            } else if elements[ArrayIndex].hgruppe == 6 {
                return "\(elements[ArrayIndex].hgruppe!). Hauptgruppe (Chalkogene)"
            } else if elements[ArrayIndex].hgruppe == 7 {
                return  "\(elements[ArrayIndex].hgruppe!). Hauptgruppe (Halogene)"
            } else if elements[ArrayIndex].hgruppe == 8 {
                return "\(elements[ArrayIndex].hgruppe!). Hauptgruppe (Edelgase)"
            } else {
                return "(Wenn du das liest, ist der Code teilweise fehlerhaft -> Bugs)"
            }
        }
    }
    
    /**
     Neben_Haubtgruppen Text
     */
    func groupsTxt() -> String {
        //Satzteil
        let st = "und es befindet sich in der "
        
        //Neben- Hauptgruppen
        if elements[ArrayIndex].hgruppe == nil {
            return "\(st) \(elements[ArrayIndex].ngruppe!). Nebengruppe"
        } else {
            //Hauptgruppen Fachbegriffen
            if elements[ArrayIndex].hgruppe == 1 {
                return "\(st) \(elements[ArrayIndex].hgruppe!). Hauptgruppe (Alkalimetalle)"
            } else if elements[ArrayIndex].hgruppe == 2 {
                return "\(st) \(elements[ArrayIndex].hgruppe!). Hauptgruppe (Erdalkalimetalle)"
            } else if elements[ArrayIndex].hgruppe == 3 {
                return "\(st) \(elements[ArrayIndex].hgruppe!). Hauptgruppe (Borgruppe)"
            } else if elements[ArrayIndex].hgruppe == 4 {
                return "\(st) \(elements[ArrayIndex].hgruppe!). Hauptgruppe (Kohlenstoffgruppe)"
            } else if elements[ArrayIndex].hgruppe == 5 {
                return "\(st) \(elements[ArrayIndex].hgruppe!). Hauptgruppe (Stickstoffgruppe)"
            } else if elements[ArrayIndex].hgruppe == 6 {
                return "\(st) \(elements[ArrayIndex].hgruppe!). Hauptgruppe (Chalkogene)"
            } else if elements[ArrayIndex].hgruppe == 7 {
                return  "\(st) \(elements[ArrayIndex].hgruppe!). Hauptgruppe (Halogene)"
            } else if elements[ArrayIndex].hgruppe == 8 {
                return "\(st) \(elements[ArrayIndex].hgruppe!). Hauptgruppe (Edelgase)"
            } else {
                return "(Wenn du das liest, ist der Code teilweise fehlerhaft -> Bugs)"
            }
        }
    }
    
    /**
     Dichte Text
     */
    func DichteTxt() -> String {
        //Dichte
        if elements[ArrayIndex].hgruppe == 7  && elements[ArrayIndex].dichte != nil || elements[ArrayIndex].kurz == "H" || elements[ArrayIndex].kurz == "He" || elements[ArrayIndex].kurz == "C" || elements[ArrayIndex].kurz == "N" {
            return "Dichte beträgt \(elements[ArrayIndex].dichte!) g/l"
        } else if elements[ArrayIndex].name == "Livermorium" || elements[ArrayIndex].oz > 84 {
            return "Dichte ist unbekannt"
        } else {
            return  "Dichte beträgt \(elements[ArrayIndex].dichte!) g/cm^3"
        }
    }
    
    /**
     Dichte
     */
    func Dichte() -> String {
        //Dichte
        if elements[ArrayIndex].hgruppe == 7  && elements[ArrayIndex].dichte != nil || elements[ArrayIndex].kurz == "H" || elements[ArrayIndex].kurz == "He" || elements[ArrayIndex].kurz == "C" || elements[ArrayIndex].kurz == "N" {
            return "Dichte beträgt \(elements[ArrayIndex].dichte!) g/l"
        } else if elements[ArrayIndex].name == "Livermorium" || elements[ArrayIndex].oz > 84 {
            return "Unbekannt"
        } else {
            return  "\(elements[ArrayIndex].dichte!) g/cm^3"
        }
    }
    
    /**
     Schmelz- und Siedepunkt Text
     */
    func SuSTxt() -> String {
        //Schmelz- und Siedepunkt
        if elements[ArrayIndex].siedepunkt == nil && elements[ArrayIndex].schmelzpunkt == nil {
            return "der Schmelz- und Siedepunkt ist unbekannt"
        } else if elements[ArrayIndex].schmelzpunkt == nil {
            return "der Siedepunkt liegt bei \(elements[ArrayIndex].siedepunkt!) C°. Der Schmelzpunkt ist unbekannt"
        } else if elements[ArrayIndex].siedepunkt == nil {
            return "der Schmelzpunkt liegt bei \(elements[ArrayIndex].schmelzpunkt!) C°. Der Siedepunkt ist unbekannt"
        } else {
            return "der Schmelzpunkt liegt bei \(elements[ArrayIndex].schmelzpunkt!) C° und der Siedepunkt bei \(elements[ArrayIndex].siedepunkt!) C°"
        }
    }
    
    /**
     Schmelz- und Siedepunkt
     */
    func SuS() -> String {
        //Schmelz- und Siedepunkt
        if elements[ArrayIndex].siedepunkt == nil && elements[ArrayIndex].schmelzpunkt == nil {
            return "Schmelzpunkt: Unbekannt \nSiededunkt: Unbekannt"
        } else if elements[ArrayIndex].schmelzpunkt == nil && elements[ArrayIndex].siedepunkt != nil {
            return "Schmelzpunkt: Unbekannt \nSiededunkt: \(elements[ArrayIndex].siedepunkt!) C°"
        } else if elements[ArrayIndex].siedepunkt == nil && elements[ArrayIndex].schmelzpunkt != nil {
            return "Schmelzpunkt: \(elements[ArrayIndex].schmelzpunkt!) C° \nSiedepunkt: Unbekannt"
        } else {
            return "Schmelzpunkt: \(elements[ArrayIndex].schmelzpunkt!) C° \nSiedepunkt \(elements[ArrayIndex].siedepunkt!) C°"
        }
    }
    
    /**
     Schalen (Anzahl) Text
     */
    func periodTxt() -> String {
        //Schale(Periode) + Sing./Pl.
        if elements[ArrayIndex].schale == 1 {
            return "hat \(elements[ArrayIndex].schale) Schale gefüllt"
        } else {
            return "hat \(elements[ArrayIndex].schale) Schalen gefüllt"
        }
    }
    
    /**
     Schalen
     */
    func period() -> String {
        return "\(elements[ArrayIndex].schale) gefüllt"
    }
    
    /**
     Radioaktivität Text
     */
    func radioaktivitätTxt() -> String {
        //Radioaktivität
        if elements[ArrayIndex].radioakt != nil {
            return "Die Radioaktivität liegt bei \(elements[ArrayIndex].radioakt!)"
        } else if elements[ArrayIndex].kurz == "Rg" || elements[ArrayIndex].kurz == "Cn" || elements[ArrayIndex].kurz == "Nh" || elements[ArrayIndex].kurz == "Fl" || elements[ArrayIndex].kurz == "Mc" || elements[ArrayIndex].kurz == "Lv" || elements[ArrayIndex].kurz == "Ts" || elements[ArrayIndex].kurz == "Og"  {
            return "Die Radioaktivität ist vorhanden, aber unbekannt"
        } else {
            return "\(elements[ArrayIndex].name) ist nicht Radioaktiv"
        }
    }
    
    /**
     Radioaktivität
     */
    func radioaktivität() -> String {
        //Radioaktivität
        if elements[ArrayIndex].radioakt != nil {
            return "\(elements[ArrayIndex].radioakt!)"
        } else if elements[ArrayIndex].kurz == "Rg" || elements[ArrayIndex].kurz == "Cn" || elements[ArrayIndex].kurz == "Nh" || elements[ArrayIndex].kurz == "Fl" || elements[ArrayIndex].kurz == "Mc" || elements[ArrayIndex].kurz == "Lv" || elements[ArrayIndex].kurz == "Ts" || elements[ArrayIndex].kurz == "Og"  {
            return "Unbestimmt"
        } else {
            return "nicht vorhanden"
        }
    }
    
    /**
     Ordnungszahl
     */
    func ordnungszahl() {
        print(elements[ArrayIndex].oz)
    }
    
    /**
     Alle Daten werden zu einem Text zusammengefasst
     
     Die Funktion kann:
     
     * Die Infos in einem Text ausgeben
     * Die Infos in Stichworten ausgeben
     
     - parameter text: Bool der Text oder Stichpunkte bestimmt TRUE-> Text | FALSE -> Stichpunkte
     */
    func infoText(text: Bool, filter: String) -> String {
        if text {
            print("\(elements[ArrayIndex].name) ist das \(elements[ArrayIndex].oz). Elemement, wiegt \(Unit()) u. \(groupsTxt()) und \(ElektonegativitätswertTxt()). Es \(periodTxt()) und \(SuSTxt()). \(radioaktivitätTxt()).")
            
            return "\(elements[ArrayIndex].name) ist das \(elements[ArrayIndex].oz). Elemement, wiegt \(Unit()) \(groupsTxt()). Der \(ElektonegativitätswertTxt()), das Element \(periodTxt()) und \(SuSTxt()). \(radioaktivitätTxt()), die \(DichteTxt())."
            
        } else if filter == "nichts" && text == false {
            print("Gewicht: \(Unit()) u. \nGruppe: \(groups()) \nElektronegativitätswert: \(Elektonegativitätswert()) \nSchale: \(period()) \n\(SuS()) \nRadioaktivität: \(radioaktivität()) \nDichte: \(Dichte())")
            return "Gewicht: \(Unit()) u. \nGruppe: \(groups()) \nElektronegativitätswert: \(Elektonegativitätswert()) \nSchale: \(period()) \n\(SuS()) \nRadioaktivität: \(radioaktivität()) \nDichte: \(Dichte())"
        
        } else if filter == "gewicht" && text == false {
            print("Gewicht: \(Unit()) u.")
            return "Gewicht: \(Unit()) u."
        } else if filter == "en" && text == false {
            print("Elektronegativitätswert: \(Elektonegativitätswert())")
            return "Elektronegativitätswert: \(Elektonegativitätswert())"
        } else if filter == "schalen" && text == false {
            print("Schale: \(period())")
            return "Schale: \(period())"
        } else if filter == "ss" && text == false {
            print("\(SuS())")
            return "\(SuS())"
        } else if filter == "radio" && text == false {
            print("Radioaktivität: \(radioaktivität())")
            return "Radioaktivität: \(radioaktivität())"
        } else if filter == "dichte" && text == false {
            print("Dichte: \(Dichte())")
            return "Dichte: \(Dichte())"
        }
        
        return "???"
    }
    
    /**
     Einmaliger Check um Crash zu verhindern
     */
    func checkNil() {
        //Userdef
        let def = UserDefaults.standard
        
        if def.value(forKey: "text") == nil {
            def.set(false, forKey: "text")
        }
    }
}
