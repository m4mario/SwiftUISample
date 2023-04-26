//
//  ButtonStyles.swift
//  SwiftUISample
//
//  Created by Domnic Mario Francis on 23/04/23.
//

import Foundation
import SwiftUI

struct CounterButtonStyle: ButtonStyle {
    
    let isEnabled: Bool

    func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
           .font(.title2.bold())
          .frame(width: 45, height: 45)
          .contentShape(Rectangle())
          .background(backgroundFor(configuration.isPressed), in: RoundedRectangle(cornerRadius: 12.0))
          .font(.title3)
          .foregroundColor(configuration.isPressed ? .gray.opacity(0.5) : .white)
  }
    
    func backgroundFor(_ isPressed: Bool) -> Color {
        guard isEnabled else {
            return Color.gray.opacity(0.5)
        }
        if isPressed {
            return Color.blue.opacity(0.7)
        }
        return Color.blue
    }
    
    init(isEnabled: Bool = true) {
        self.isEnabled = isEnabled
    }
}
