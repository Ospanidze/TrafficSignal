//
//  SwiftButtonView.swift
//  TrafficSignal
//
//  Created by Айдар Оспанов on 21.04.2023.
//

import SwiftUI

struct SwiftButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Capsule()
                    .frame(width: 200, height: 50)
                    .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                Text(title)
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct SwiftButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftButtonView(title: "NEXT", action: { })
    }
}
