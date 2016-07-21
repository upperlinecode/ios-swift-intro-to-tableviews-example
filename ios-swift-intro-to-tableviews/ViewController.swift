//
//  ViewController.swift
//  ios-swift-intro-to-tableviews
//
//  Created by Angelica Bato on 7/21/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var item = GroceryItem()
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var imageOfItem: UIImageView!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!

    

    override func viewDidLoad() {
        if let itemName = item.name {
            nameLabel.text = itemName
        }
        
        if let image = item.pic {
            imageOfItem.image = image
        }
        
        if let amount = item.inventoryAmount {
            amountLabel.text = "Number of item left: \(amount)"
        }
        
        if let price = item.priceInCents {
            priceLabel.text = "Price: $\(price/100)"
        }
        
    }
}
