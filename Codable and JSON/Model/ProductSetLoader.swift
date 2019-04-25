//
//  PhotoSetLoader.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/7/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import Foundation

class ProductSetLoader {
    
    class func load(jsonFileName: String) -> ProductSet? {
        var productSet: ProductSet?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            productSet = try? jsonDecoder.decode(ProductSet.self, from: jsonData)
        }
        
        return productSet
    }
}
