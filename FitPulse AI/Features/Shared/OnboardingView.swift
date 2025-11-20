//
//  OnboardingView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

// OnboardingView.swift
import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    var body: some View {
        VStack(spacing: 50) {
            Spacer()
            
            Image(systemName: "figure.run")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundStyle(.orange)
            
            Text("FitPulse AI")
                .font(.largeTitle)
                .bold()
            
            Text("Your personal fitness coach")
                .font(.title2)
                .foregroundStyle(.secondary)
            
            Button {
                withAnimation {
                    hasSeenOnboarding = true
                }
            } label: {
                Text("Get Started")
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
        .background(Color(.systemBackground))
    }
}
