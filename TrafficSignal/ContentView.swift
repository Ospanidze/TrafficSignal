//
//  ContentView.swift
//  TrafficSignal
//
//  Created by Айдар Оспанов on 21.04.2023.
//

import SwiftUI

enum ColorView {
    case red
    case yellow
    case green
}

struct ContentView: View {
   
    private let turnOn: CGFloat = 1
    private let turnOff: CGFloat = 0.3
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    @State private var color = ColorView.red
    @State private var title = "START"
    
    var body: some View {
        VStack {
            VStack(spacing: 16) {
                SwiftCircleView(color: .red, opacity: redOpacity)
                SwiftCircleView(color: .yellow, opacity: yellowOpacity)
                SwiftCircleView(color: .green, opacity: greenOpacity)
            }
            
            Spacer()
            
            SwiftButtonView(
                title: title,
                action: startButtonTapped
            )
        }
        .padding()
    }
}

extension ContentView {
    private func startButtonTapped() {
        if title == "START" {
            title = "NEXT"
        }
        
        switch color {
        case .red:
            redOpacity = turnOn
            yellowOpacity = turnOff
            greenOpacity = turnOff
            color = .yellow
        case .yellow:
            yellowOpacity = turnOn
            redOpacity = turnOff
            color = .green
        case .green:
            greenOpacity = turnOn
            yellowOpacity = turnOff
            color = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
