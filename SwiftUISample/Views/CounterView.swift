//
//  CounterView.swift
//  SwiftUISample
//
//  Created by Domnic Mario Francis on 23/04/23.
//

import SwiftUI

struct CounterView: View {
    @Binding var data: FavouritesData
    let counter: CounterClass
    
    var decrementButtonEnabled: Bool {
        data.currentCounterValue > 0
    }
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    counter.decrement();
                } label: {
                    Image(systemName: "minus")
                        .padding()
                }
                .buttonStyle(CounterButtonStyle(isEnabled: decrementButtonEnabled))
                .disabled(!decrementButtonEnabled)
                
                Text("\(data.currentCounterValue)")
                    .font(Font.system(.title, design: .rounded).weight(.bold))
                    .frame(minWidth: 75.0)
                    .padding()
                
                Button {
                    CounterLogic.increamentCounter($data)
                } label: {
                    Image(systemName: "plus")
                        .padding()
                }
                .buttonStyle(CounterButtonStyle())
            }
            .padding()
            .padding(.bottom)
            
            Button("Add To Favourites") {
                data.addToFavourites(data.currentCounterValue)
                data.currentCounterValue = 0
            }.disabled(data.currentCounterValue == 0)
        }
        .navigationMaster(title: "Counter")
    }
                             
}



struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(data:.constant(FavouritesData()),
                    counter: CounterClass())
    }
}
