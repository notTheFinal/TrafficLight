//
//  TrafficLight.swift
//  TrafficLight
//
//  Created by Александр on 14.08.2022.
//

import SwiftUI

struct TrafficLightView: View {
    let opacity: (red: Double,
                  yellow: Double,
                  green: Double)
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(Color(red: 255, green: 0, blue: 0, opacity: opacity.red))
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            Circle()
                .foregroundColor(Color(red: 255, green: 255, blue: 0, opacity: opacity.yellow))
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            Circle()
                .foregroundColor(Color(red: 0, green: 255, blue: 0, opacity: opacity.green))
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(opacity: (0.3, 0.3, 1.0))
    }
}
