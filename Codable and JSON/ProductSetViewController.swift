//
//  PhotoSetViewController.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/6/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import UIKit

class ProductSetViewController: UIViewController {
    @IBOutlet weak var displayTextView: UITextView!
    
    let jsonFileName = "product.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let productCollection = ProductCollectionLoader.load(jsonFileName: jsonFileName) {
            var displayInfo = ""
            displayInfo += "Status: \(productCollection.status)\n"
            
            for product in productCollection.products {
                displayInfo += "Product:\n"
                displayInfo += "\(product.id)\n"
                displayInfo += "\(product.category)\n"
                displayInfo += "\(product.title)\n"
                displayInfo += "\(product.price)\n"
                displayInfo += "\(product.stockedQuantity)\n"
                
            }
            displayTextView.text = displayInfo
        } else {
            displayTextView.text = "Error."
        }
    }
}

