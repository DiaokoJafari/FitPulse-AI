//
//  MainTabView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI

struct MainTabView: View {
    
    @EnvironmentObject private var router: AppRouter
    
    var body: some View {
        TabView(selection: $router.selectedTab) {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
                .tag(AppTab.home)
            
            WorkoutsView()
                .tabItem { Label("Workouts", systemImage: "flame") }
                .tag(AppTab.workouts)
            
            StatsView()
                .tabItem { Label("Stats", systemImage: "chart.bar") }
                .tag(AppTab.stats)
            
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear") }
                .tag(AppTab.settings)
        }
        .tint(.orange)
    }
}
