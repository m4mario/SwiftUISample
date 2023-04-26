//
//  Navigated.swift
//  SwiftUISample
//
//  Created by Domnic Mario Francis on 23/04/23.
//

import Foundation

import SwiftUI

struct NavigationMaster: ViewModifier {
    let title: String
    
    func body(content: Content) -> some View {
        NavigationView {
            content
                .navigationTitle(title)
        }
    }
}

extension View {
    @MainActor
    func navigationMaster(title: String) -> some View {
        modifier(NavigationMaster(title: title))
    }
}
