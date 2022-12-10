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

struct ContentView: View {
    var body: some View {
        VStack {
            ColorCircleView(color: .red, opacity: 1)
            ColorCircleView(color: .yellow, opacity: 1)
            ColorCircleView(color: .green, opacity: 1)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
