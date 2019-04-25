//
//  PhotoCollectionLoader.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/7/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import Foundation

class ProductCollectionLoader {
    
    class func load(jsonFileName: String) -> ProductCollection? {
        var productCollection: ProductCollection?
        let jsonDecoder = JSONDecoder()
 
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl) {
                productCollection = try? jsonDecoder.decode(ProductCollection.self, from: jsonData)
        }
        
        return productCollection
    }
}
