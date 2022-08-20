//
//  ContentView.swift
//  TrafficLight
//
//  Created by Александр on 13.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var opacity = (red: 0.001,
                                  yellow: 0.001,
                                  green: 0.001)
    @State private var switcher = 0
    @State private var lightIsOn = false
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightView(opacity: opacity)
                Spacer()
                Button(lightIsOn ? "Next" : "Start") {
                    lightIsOn = true
                    switch switcher {
                    case 0:
                        opacity = (red: 1,
                                   yellow: 0.001,
                                   green: 0.001)
                        switcher += 1
                    case 1:
                        opacity = (red: 0.001,
                                   yellow: 1,
                                   green: 0.001)
                        switcher += 1
                    default:
                        opacity = (red: 0.001,
                                   yellow: 0.001,
                                   green: 1)
                        switcher -= 2
                    }
                }
                .buttonStyle(TrafficLightButtonStyle())
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
