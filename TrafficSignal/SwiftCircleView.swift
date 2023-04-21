//
//  SwiftCircleView.swift
//  TrafficSignal
//
//  Created by Айдар Оспанов on 21.04.2023.
//

import SwiftUI

struct SwiftCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

struct SwiftCircleView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftCircleView(color: .cyan, opacity: 0.3)
    }
}
