//
//  NotificationStepView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 20/11/2025.
//

import SwiftUI

struct NotificationStepView: View {
    @EnvironmentObject var vm: OnboardingViewModel
    
    @State private var isLoading = false
    
    var body: some View {
        OnboardingPage(
            title: "Never miss a workout again",
            subtitle: "We’ll remind you to train when motivation dips — just gentle nudges, promise!",
            image: "onboarding_icon",

            primaryButton: "Let me know",
            onPrimary: {
                guard !isLoading else { return }
                isLoading = true
                
                Task { @MainActor in
                    await vm.requestNotification()
                    isLoading = false
                }
            },
            
            secondaryButton: "Maybe later",
            onSecondary: { vm.nextPage() }
        )
        .disabled(isLoading)
    }
}
