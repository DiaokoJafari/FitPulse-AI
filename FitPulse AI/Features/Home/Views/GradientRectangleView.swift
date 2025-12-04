//
//  GradientRectangleView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 04/12/2025.
//

import SwiftUI

struct GradientRectangleView: View {
    var body: some View {
        let startColor = Color(red: 100/255, green: 100/255, blue: 232/255)
        let endColor = Color(red: 135/255, green: 60/255, blue: 226/255)

        Rectangle()
            .fill(.linearGradient(
                colors: [startColor, endColor],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
            .frame(height: 200)
            .cornerRadius(20)
            .padding(.horizontal)
    }
}

