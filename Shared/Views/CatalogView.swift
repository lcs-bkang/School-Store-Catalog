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
                    VStack {
                        HStack {
                            Text(currentItem.item)
                                .font(.headline)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack {
                            Text("$\(String(currentItem.cost))")
                                .font(.callout)
                                .fontWeight(.semibold)
                            Spacer()
                            Text("Category: \(currentItem.category)")
                                .font(.callout)
                            Spacer()
                        }
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Catalog")
        .searchable(text: $searchText)
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CatalogView(catalog: catalogTestStore)
        }
    }
}
