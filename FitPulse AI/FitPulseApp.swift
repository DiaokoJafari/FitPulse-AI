//
//  FitPulseApp.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 07/11/2025.
//

import SwiftUI
import SwiftData

@main
struct FitPulseApp: App {
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    @StateObject private var router = AppRouter()
    @StateObject private var onboardingViewModel = OnboardingViewModel()
    
    private let container: ModelContainer = {
        do {
            return try ModelContainer(for: Workout.self, User.self)
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            if hasSeenOnboarding {
                MainTabView()
            } else {
                OnboardingView()
                    .environmentObject(onboardingViewModel)
            }
        }
        .environmentObject(router)
        .modelContainer(container)
    }
}
