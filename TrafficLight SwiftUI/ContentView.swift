//
//  ContentView.swift
//  TrafficLight SwiftUI
//
//  Created by Roman Golubinko on 10.12.2022.
//

import SwiftUI

enum Light {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var buttonTitle = "Start"
    
    @State private var currentColor = Light.red
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    var body: some View {
        VStack(spacing: 30) {
            ColorCircleView(color: .red, opacity: redOpacity)
                .padding(.top, 20)
            ColorCircleView(color: .yellow, opacity: yellowOpacity)
            ColorCircleView(color: .green, opacity: greenOpacity)
            Spacer()
            LightSwitchButtonView(title: buttonTitle, action: lightSwitch)
                .padding(.bottom, 40)
        }
        .padding()
    }
    
    private func lightSwitch() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        if buttonTitle == "Start" {
            buttonTitle = "Next"
            redOpacity = lightIsOn
            return
        }
        
        switch currentColor {
        case .red:
            redOpacity = lightIsOff
            yellowOpacity = lightIsOn
            currentColor = .yellow
        case .yellow:
            yellowOpacity = lightIsOff
            greenOpacity = lightIsOn
            currentColor = .green
        case .green:
            greenOpacity = lightIsOff
            redOpacity = lightIsOn
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
