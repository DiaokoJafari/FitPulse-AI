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
        }
    }
}
