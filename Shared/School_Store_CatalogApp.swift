//
//  School_Store_CatalogApp.swift
//  Shared
//

import SwiftUI

@main
struct School_Store_CatalogApp: App {
    
    // Instance of the Catalog structure
    @StateObject var catalog = CatalogStore()
    
    var body: some Scene {
        WindowGroup {
            CatalogView(catalog: catalog)
        }
    }
}
