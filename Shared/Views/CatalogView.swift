//
//  CatalogView.swift
//  Shared
//
//  Created by Brad Kang on 2022-03-25.
//

import SwiftUI

struct CatalogView: View {
    
    // Instance of the Catalog
    var catalog = Catalog()
    
    // The text that changes when people use the search bar
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            List(catalog) { currentItem in
                Text(catalog.item)
            }
        }
            .padding()
            .searchable(text: $searchText)
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
