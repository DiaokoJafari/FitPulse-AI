//
//  DIContainer.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import Foundation

@MainActor
final class DIContainer {
    // MARK: - Singleton
    static let shared = DIContainer()
    
    private init() {}
    
    // MARK: - ViewModels
    func makeHomeViewModel() -> HomeViewModel {
        HomeViewModel()
    }
    
    func makeWorkoutsViewModel() -> WorkoutsViewModel {
        WorkoutsViewModel()
    }
    
    func makeStatsViewModel() -> StatsViewModel {
        StatsViewModel()
    }
    
    func makeSettingsViewModel() -> SettingsViewModel {
        SettingsViewModel()
    }
    
}
