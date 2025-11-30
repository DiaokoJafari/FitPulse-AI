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

    @StateObject private var coordinator = AppCoordinator()
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
            NavigationStack(path: $coordinator.path) {
                
                // MARK: Root View
                Group {
                    if hasSeenOnboarding {
                        MainTabView()
                    } else {
                        OnboardingView()
                            .environmentObject(onboardingViewModel)
                    }
                }
                
                // MARK: - Navigation Destinations
                .navigationDestination(for: RootRoute.self) { route in
                    switch route {
                        
                    case .auth(let authRoute):
                        switch authRoute {
                        case .login:
                            EmptyView()
                        case .register:
                            EmptyView()
                        case .forgotPassword:
                            EmptyView()
                        }
                        
                    case .main(let mainRoute):
                        switch mainRoute {
                        case .home:
                            HomeView()
                        }
                    }
                }
            }
            .environmentObject(coordinator)
            .modelContainer(container)
        }
    }
}
