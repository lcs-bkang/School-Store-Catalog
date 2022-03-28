//
//  School_Store_CatalogApp.swift
//  Shared
//
//  Created by Brad Kang on 2022-03-25.
//

import SwiftUI

@main
struct School_Store_CatalogApp: App {
    
    // Instance of the Catalog structure
    @StateObject var catalog = CatalogStore()
    
    var body: some Scene {
        WindowGroup {
            CatalogView(catalog: CatalogStore())
        }
    }
}
