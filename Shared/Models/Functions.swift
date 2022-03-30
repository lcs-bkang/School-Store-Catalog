//
//  Functions.swift
//  School Store Catalog
//
//  Created by Brad Kang on 2022-03-30.
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
