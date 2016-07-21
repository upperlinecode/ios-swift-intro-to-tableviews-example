//
//  TableViewController.swift
//  ios-swift-intro-to-tableviews
//
//  Created by Angelica Bato on 7/21/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var inventory:[GroceryItem]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let banana = GroceryItem(name: "Banana", inventoryAmount: 35, priceInCents: 100, pic: UIImage.init(named: "banana"))
        
        let walnut = GroceryItem(name: "Walnut", inventoryAmount: 500, priceInCents: 75, pic: UIImage.init(named: "walnuts"))
        
        let dishsoap = GroceryItem(name: "Dish Soap", inventoryAmount: 15, priceInCents: 850, pic: UIImage.init(named: "dishsoap"))
        
        let toiletPaper = GroceryItem(name: "Charmin", inventoryAmount: 100, priceInCents: 750, pic: UIImage.init(named: "charmin"))
        
        inventory = [banana, walnut, dishsoap, toiletPaper]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return inventory.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath)

        cell.textLabel?.text = inventory[indexPath.row].name
        
        if let num = inventory[indexPath.row].inventoryAmount {
            cell.detailTextLabel?.text = "\(num) left"
        }
        
        return cell
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destVC = segue.destinationViewController as! ViewController
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let itemToSend = inventory[indexPath.row]
            destVC.item = itemToSend
        }
    }
    

}
