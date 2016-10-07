//
//  RecipesTVCTableViewController.swift
//  Bartender
//
//  Created by Damián Tapia Nava on 07/10/16.
//  Copyright © 2016 Damián Tapia Nava. All rights reserved.
//

import UIKit

class RecipesTVC: UITableViewController
{
    var drinks:NSArray?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let elPath  = Bundle.main.path(forResource: "Drinks", ofType: "plist")
        self.drinks = NSArray(contentsOfFile:elPath!)
        self.navigationItem.title = "DRINKS"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.drinks!.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let recipeInfo = self.drinks![indexPath.row] as! NSDictionary
        
        cell.textLabel?.text = (recipeInfo["name"] as! String)
        
        let imagePath = (recipeInfo["image"] as! String)
        
        cell.imageView?.image = UIImage(named: imagePath)

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let destino = segue.destination as! DrinkDetailVC
        
        let indexPath = self.tableView.indexPathForSelectedRow
        
        let recipeInfo = self.drinks![indexPath!.row] as! NSDictionary
        
        destino.info = recipeInfo
    }

}
