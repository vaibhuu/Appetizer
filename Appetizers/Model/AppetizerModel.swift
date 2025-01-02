//
//  AppetizerModel.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 01/01/25.
//

import SwiftUI

struct AppetizerModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageURL: String
    let description: String
    let price: Double
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse: Decodable {
    let request: [AppetizerModel]
}

struct MockData {
    static var sampleAppetizer = AppetizerModel(id: 0001, name: "Test Appetizer",
                                                imageURL: "",
                                                description: "This is description for appetizer",
                                                price: 9.99,
                                                calories: 99,
                                                protein: 99,
                                                carbs: 99)
    
    
    static let appetizerArray = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}

