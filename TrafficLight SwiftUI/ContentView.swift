//
//  ContentView.swift
//  TrafficLight SwiftUI
//
//  Created by Roman Golubinko on 10.12.2022.
//

import SwiftUI

enum Colors {
    case red
    case yellow
    case green
}

let lightIsOn = 1.0
let lightIsOff = 0.3

struct ContentView: View {
    @State var buttonTitle = "Start"
    
    @State var currentColor = Colors.red
    @State var redOpacity = lightIsOff
    @State var yellowOpacity = lightIsOff
    @State var greenOpacity = lightIsOff
    
    private func lightSwitch() {
        
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
