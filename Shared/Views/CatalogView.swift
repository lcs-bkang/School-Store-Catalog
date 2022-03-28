//
//  CatalogView.swift
//  Shared
//
//  Created by Brad Kang on 2022-03-25.
//

import SwiftUI

struct CatalogView: View {
    
    // Instance of the Catalog
    @State var catalog: CatalogStore
    
    // The text that changes when people use the search bar
    @State var searchText = ""
    
    var body: some View {
        VStack {
            
            List(catalog.items) { currentItem in
                
                NavigationLink(destination: ItemDetailView(catalog: currentItem)) {
                    Text(currentItem.item)
                }
            }
        }
        .padding()
        .searchable(text: $searchText)
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView(catalog: catalogTestStore)
    }
}
