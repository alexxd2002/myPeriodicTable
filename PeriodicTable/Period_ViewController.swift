//
//  Period_ViewController.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 01.10.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

class Period_ViewController: UIViewController {

    @IBOutlet weak var popup: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var period: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var KLMN: UILabel!
    @IBOutlet weak var urheberinfo: UIButton!
    
    var oz: Int = 1
    var nameElement: String = "Periodic Table"
    var periodElement: Int = 1
    var hg: Int? = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Layout
        layout()
        
        //Anzeige
        curElementImage()
        showName()
        showPeriod()
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
