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
                    .padding([.leading, .bottom, .trailing])
                HStack {
                    Spacer()
                    Text("Price in CAD:")
                        .fontWeight(.bold)
                        .font(.headline)
                    Text("$\(catalog.cost, specifier: "%.2f")")
                        .fontWeight(.medium)
                        .font(.subheadline)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Category:")
                        .fontWeight(.bold)
                        .font(.headline)
                    Text(catalog.category)
                        .fontWeight(.medium)
                        .font(.subheadline)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Colour Options:")
                        .fontWeight(.bold)
                        .font(.headline)
                    ForEach(catalog.colours, id: \.self) { colour in
                        Text("\(colour)")
                            .fontWeight(.medium)
                            .font(.subheadline)
                    }
                    Spacer()
                }
                Spacer()
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
