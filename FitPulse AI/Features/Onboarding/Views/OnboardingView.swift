//
//  OnboardingView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    @EnvironmentObject var onboardingViewModel: OnboardingViewModel
    
    var body: some View {
        ZStack {
            TabView(selection: $onboardingViewModel.currentPage) {
                WelcomeStepView().tag(0)
                BenefitsStepView().tag(1)
                NotificationStepView().tag(2)
                CameraStepView().tag(3)
                FinalStepView().tag(4)
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            VStack {
                Spacer()
                
                Button("Skip") {
                    hasSeenOnboarding = true
                }
                .font(.appButton)
                .foregroundColor(.white)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(Color.red.opacity(0.8))
                .padding(.bottom, UIDevice.isIpad ? 100 : 50)
                .opacity(onboardingViewModel.currentPage == 4 ? 0 : 1)
                .animation(.easeInOut(duration: 0.2), value: onboardingViewModel.currentPage)
            }
        }
    }
}
