//
//  ItemDetailView.swift
//  School Store Catalog
//

import SwiftUI

struct ItemDetailView: View {
    
    let catalog: Catalog
    
    var body: some View {
        VStack {
            Image(catalog.image)
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetailView(catalog: Catalog.exampleData)
        }
    }
}
