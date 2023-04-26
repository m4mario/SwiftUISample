//
//  Favourite.swift
//  SwiftUISample
//
//  Created by Domnic Mario Francis on 23/04/23.
//

import Foundation
import SwiftUI

struct Favourite: Identifiable {
    let id = UUID()
    let value: Int
}


struct FavouritesData {
    var favourites: [Favourite] = []
    var currentCounterValue: Int = 0
    
    mutating func addToFavourites(_ value: Int) {
        favourites.append(Favourite(value: value))
    }
    
    mutating func removeFavourites(atOffsets indexes: IndexSet) {
        favourites.remove(atOffsets: indexes)
    }
}
