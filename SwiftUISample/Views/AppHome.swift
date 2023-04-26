//
//  ContentView.swift
//  SwiftUISample
//
//  Created by Domnic Mario Francis on 23/04/23.
//

import SwiftUI

let counter: CounterClass = CounterClass()

struct AppHome: View {
    @State var data: FavouritesData = FavouritesData()
    
    var body: some View {
        TabView {
            CounterView(data: $data, counter: counter)
                .tabItem {
                    TabLabel(image: "star", text: "Counter(\(data.currentCounterValue))")
                }
            
            FavouriteListView(data: $data)
                .tabItem {
                    TabLabel(image: "list.dash", text: "Favourites(\(data.favourites.count))")
                }
        }.task {
            counter.setData($data)
        }
    }
}


struct TabLabel: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(text)
        }
    }
}


struct AppHome_Previews: PreviewProvider {
    static var previews: some View {
        AppHome()
    }
}
