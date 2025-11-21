//
//  FinalStepView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 20/11/2025.
//

import SwiftUI

struct FinalStepView: View {
    @EnvironmentObject var vm: OnboardingViewModel
    
    var body: some View {
        OnboardingPage(
            title: "All set! 🚀",
            subtitle: "Now you can work out like a pro",
            image: "onboarding_icon",
            primaryButton: "Get started",
            onPrimary: { vm.skipOnboarding() },
            viewType: .finalStep
        )
    }
}
