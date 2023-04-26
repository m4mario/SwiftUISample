//
//  CounterLogic.swift
//  SwiftUISample
//
//  Created by Domnic Mario Francis on 23/04/23.
//

import Foundation
import SwiftUI

enum CounterLogic {
    @MainActor
    static func increamentCounter(_ data: Binding<FavouritesData>) {
        data.wrappedValue.currentCounterValue += 1
    }
}
