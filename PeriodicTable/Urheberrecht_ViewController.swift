//
//  Urheberrecht_ViewController.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 01.10.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

class Urheberrecht_ViewController: UIViewController {

    @IBOutlet weak var LizenzButton: UIButton!
    @IBOutlet weak var zurück: UIButton!
    @IBOutlet weak var lizenz: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Corners()
        // Do any additional setup after loading the view.https://creativecommons.org/licenses/by-sa/2.0/uk/deed.en
    }
    @IBAction func zurLizenz(_ sender: Any) {
        openLink()
    }
    
    func openLink() {
        UIApplication.shared.open(URL(string: "https://creativecommons.org/licenses/by-sa/2.0/uk/deed.en")! as URL, options: [:], completionHandler: nil)
    }
    
    func lizCorners() {
        LizenzButton.layer.cornerRadius = 12
        LizenzButton.layer.masksToBounds = true
    }
    
    func zurückCorners() {
        zurück.layer.cornerRadius = 10
        zurück.layer.masksToBounds = true
        
    }
    
    func Corners() {
        lizCorners()
        zurückCorners()
        viewCorners()
    }
    
    func viewCorners() {
        lizenz.layer.cornerRadius = 10
        lizenz.layer.masksToBounds = true
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
