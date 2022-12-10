//
//  LightView.swift
//  TrafficLight SwiftUI
//
//  Created by Roman Golubinko on 10.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(color).opacity(opacity)
            .overlay(Circle().stroke(Color.black, lineWidth: 1))
            .shadow(color: color, radius: 10).opacity(opacity)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}
