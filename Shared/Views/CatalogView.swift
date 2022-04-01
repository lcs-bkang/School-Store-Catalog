//
//  CatalogView.swift
//  Shared
//

import SwiftUI

struct CatalogView: View {
    
    // Instance of the Catalog
    @State var catalog: CatalogStore
    
    // The text that changes when people use the search bar
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                List(searchFilter(firstList: catalog.items, search: searchText)) { currentItem in
                    
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
            .searchable(text: $searchText, prompt: "Search for Items")
            .disableAutocorrection(true)
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CatalogView(catalog: catalogTestStore)
        }
    }
}
