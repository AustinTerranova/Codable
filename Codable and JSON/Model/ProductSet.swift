//
//  PhotoSet.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/6/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//
// https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types
// https://hackernoon.com/everything-about-codable-in-swift-4-97d0e18a2999
// https://useyourloaf.com/blog/swift-codable-with-custom-dates/
// https://en.wikipedia.org/wiki/ISO_8601

import Foundation

struct ProductSet: Codable {
    var status: String
    var products: [ProductItem]
    
    
}

struct ProductItem: Codable {
    var id: Int
    var category: String
    var title: String
    var price: Double
    var stockedQuantity: Int
    
    
}
