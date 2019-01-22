//
//  Elemente_TableViewController.swift
//  PeriodicTable
//
//  Created by Alexander Meinecke on 15.08.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit

class Elemente_TableViewController: UITableViewController {
    

    //Create empty Array for elements
    var elements: [Element] = []
    var sort = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkSort()
        //checkNil()
        
        elements = createArray(sort: UserDefaults.standard.value(forKey: "sort") as! Int)
        
        print(elements)
        tableView.reloadData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(UserDefaults.standard.value(forKey: "sort") as! Int)
        elements = createArray(sort: UserDefaults.standard.value(forKey: "sort") as! Int)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return elements.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let element = elements[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Element", for: indexPath) as! TableViewCell
        
        cell.setElement(element: element)
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Element_Information_ViewController {
            print(destination)
            destination.ArrayIndex = tableView.indexPathForSelectedRow!.row
            destination.elements = elements
        }
    }
    
    
}
