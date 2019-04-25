//
//  PhotoCollectionViewController.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/6/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import UIKit

class ProductCollectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let jsonFileName = "product"
    var products = [Products]()

    @IBOutlet weak var productTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let productCollection = ProductCollectionLoader.load(jsonFileName: jsonFileName)
        if let productCollection = productCollection {
            products = productCollection.products
        }
        productTableView.reloadData()
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        
        
        let product = products[indexPath.row]
            
        
        cell.textLabel?.text = product.title
        cell.detailTextLabel?.text = String(product.stockedQuantity)
        
        
            
        
    

        
        return cell
    }
}
