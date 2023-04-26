//
//  FavouriteListView.swift
//  SwiftUISample
//
//  Created by Domnic Mario Francis on 23/04/23.
//

import SwiftUI

struct FavouriteListView: View {
    @Binding var data: FavouritesData

    var body: some View {
        VStack {
            if data.favourites.count > 0 {
                List {
                    
                    Spacer()
                        .listRowSeparator(.hidden)
                    
                    ForEach(data.favourites, id: \.id) { favourite in
                        Text("\(favourite.value)")
                    }
                    .onDelete { indexSet in
                        withAnimation {
                            data.removeFavourites(atOffsets: indexSet)
                        }
                    }
                    
                }
                .listStyle(.plain)
            } else {
                Text("No Favourites")
            }
        }
        .navigationMaster(title: "Favourites")
    }
}

struct FavouriteListView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteListView(data:.constant(FavouritesData()))
    }
}
