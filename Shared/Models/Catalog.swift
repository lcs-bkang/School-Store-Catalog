//
//  Catalog.swift
//  School Store Catalog
//

import Foundation

struct Catalog: Decodable, Identifiable {
    
    let item: String
    let cost: Double
    let category: String
    let image: String
    let colours: [String]
    let id: Int
    
    static let exampleData = Catalog(item: "Blazar", cost: 55.95, category: "Clothes", image: "Gum", colours: ["Green", "Navy"], id: 23)
}
