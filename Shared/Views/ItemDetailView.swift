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
                .resizable()
                .scaledToFit()
                .padding([.leading, .bottom, .trailing], -1.0)
            VStack {
                Text("Price in CAD:")
                    .fontWeight(.bold)
                    .font(.title2)
                Text("$\(catalog.cost, specifier: "%.2f")")
                    .fontWeight(.medium)
                    .font(.headline)
            }
            .padding([.bottom], -1.0)
            VStack {
                Text("Category:")
                    .fontWeight(.bold)
                    .font(.title2)
                Text(catalog.category)
                    .fontWeight(.medium)
                    .font(.headline)
            }
            .padding([.bottom], -1.0)
            VStack {
                    Text("Colour Options:")
                        .fontWeight(.bold)
                        .font(.title2)
                    Text(colourList(colours: catalog.colours).dropLast())
                        .fontWeight(.medium)
                        .font(.headline)
            }
            .padding([.bottom], -1.0)
        }
        .navigationTitle(catalog.item)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetailView(catalog: Catalog.exampleData)
        }
    }
}
