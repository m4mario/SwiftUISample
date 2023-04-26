//
//  CounterClass.swift
//  SwiftUISample
//
//  Created by Domnic Mario Francis on 23/04/23.
//

import Foundation
import SwiftUI

class CounterClass {
    private var _data: Binding<FavouritesData>?
    
    init(_ data: Binding<FavouritesData>? = nil) {
        self._data = data
    }
    
    func setData(_ _data: Binding<FavouritesData>) {
        print("New Value : \(_data.wrappedValue.currentCounterValue)")
        self._data = _data
    }
    
    private var currentCounterValue: Int {
        get {
            guard let _data else { fatalError("No Data Set in CounterClass") }
            return _data.wrappedValue.currentCounterValue
        }
        set {
            guard let _data else { fatalError("No Data Set in CounterClass") }
            _data.wrappedValue.currentCounterValue = newValue
        }
    }
            
    func decrement() {
        guard _data != nil else { return }
        currentCounterValue -= 1
        if currentCounterValue < 0 {
            currentCounterValue = 0
        }
    }
}
