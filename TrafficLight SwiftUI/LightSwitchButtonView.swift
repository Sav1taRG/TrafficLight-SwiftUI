//
//  LightSwitchButtonView.swift
//  TrafficLight SwiftUI
//
//  Created by Roman Golubinko on 10.12.2022.
//

import SwiftUI



struct LightSwitchButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
        }
    }
}

struct LightSwitchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LightSwitchButtonView(title: "Start", action: { } )
    }
}
