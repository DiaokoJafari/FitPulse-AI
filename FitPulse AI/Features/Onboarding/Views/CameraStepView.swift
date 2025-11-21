//
//  CameraStepView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 20/11/2025.
//

import SwiftUI

struct CameraStepView: View {
    @EnvironmentObject var vm: OnboardingViewModel
    
    @State private var isLoading = false
    @State private var granted = false
    
    var body: some View {
        OnboardingPage(
            title: "Shall we fix your form?",
            subtitle: "The camera lets us:\n• Automatically count your reps\n• Check and correct your form in real-time",
            image: "onboarding_icon",

            primaryButton: "I allow",
            onPrimary: {
                guard !isLoading else { return }
                isLoading = true
                
                Task { @MainActor in
                    await vm.requestCamera()
                    isLoading = false
                }
            },
            
            secondaryButton: "Maybe later",
            onSecondary: {
                vm.nextPage()
            }
        )
        .disabled(isLoading)
    }
}
