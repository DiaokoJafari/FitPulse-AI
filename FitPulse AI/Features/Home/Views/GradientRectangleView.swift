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

        VStack(spacing: 14) {
            HStack {
                Text("Today's Workout")
                    .font(.appSmallTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Spacer()
                Image(systemName: "flame.fill")
                    .font(.system(size: 20))
                    .foregroundColor(.orange)
            }
            
            HStack {
                Text("Uper Body Strength")
                    .font(.appSmallTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Spacer()
            }
            
            HStack {
                Image(systemName: "clock.fill")
                    .font(.system(size: 14))
                    .foregroundColor(.white)

                Text("45 min")
                    .font(.appBody)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "bolt.fill")
                    .font(.system(size: 14))
                    .foregroundColor(.white)

                Text("Intermediate")
                    .font(.appBody)
                    .foregroundStyle(.white)
            }
                        
            Button(action: {
                print("Button tapped")
            }) {
                Text("Start Workout")
                    .font(.appSmallTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            .background(Color.white)
            .cornerRadius(16)
            .shadow(radius: 2)
            .padding(.top)
        }
        .padding(25)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.linearGradient(
                    colors: [startColor, endColor],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
        )
    }
}
