//
//  ButtonStyle.swift
//  TrafficLight
//
//  Created by Александр on 20.08.2022.
//

import SwiftUI

struct TrafficLightButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
          .padding(.bottom, 50.0)
          .foregroundColor(.white)
}
}
