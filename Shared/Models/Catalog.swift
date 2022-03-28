//
//  Catalog.swift
//  School Store Catalog
//
//  Created by Brad Kang on 2022-03-25.
//

import Foundation

struct Catalog: Decodable, Identifiable {
    
    let item: String
    let cost: Double
    let category: String
    let colours: [String]
    let id: Int
}


let ExampleData: Catalog = item = "Blazar", cost = 5.99, category = "Clothes", colours: ["Navy", "Green"], id: 150
