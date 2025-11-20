//
//  AppRouter.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 12/11/2025.
//

import Foundation

enum AppTab: Hashable { case home, workouts, stats, settings }

@MainActor
final class AppRouter: ObservableObject {
    @Published var selectedTab: AppTab = .home
}
