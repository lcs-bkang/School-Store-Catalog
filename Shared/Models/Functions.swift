//
//  Functions.swift
//  School Store Catalog
//

import Foundation

func searchFilter(firstList original: [Catalog], search using: String) -> [Catalog] {
    
    // If user is not searching, don't filter
    if using.isEmpty {
        return original
    } else {
        
        // Return filtered list
        
        // Create variable to hold the filtered List
        var filteredList: [Catalog] = []
        
        // Loop for each item in the catalog to find if the search term is in the word
        for item in original {
            
            // If the letter/word is there, add the item to the new list
            if item.item.lowercased().contains(using.lowercased()) {
                filteredList.append(item)
            }
        }
        return filteredList
    }
}

func colourList(colours: [String]) -> String {

    // Create variable to hold the final string
    var finalColours = ""

    // Iterate over each colour in the list
    for colour in colours {
        finalColours += " \(colour),"
    }

    return finalColours
}
