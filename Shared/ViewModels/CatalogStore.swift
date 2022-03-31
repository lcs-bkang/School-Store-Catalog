//
//  CatalogStore.swift
//  School Store Catalog
//

import Foundation

class CatalogStore: ObservableObject {
    
    var items: [Catalog]
    
    init() {
        
        // Get a pointer to the file
        let url = Bundle.main.url(forResource: "SchoolStoreCatalog", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file into the array
        items = try! JSONDecoder().decode([Catalog].self, from: data)
    }
}

var catalogTestStore = CatalogStore()
