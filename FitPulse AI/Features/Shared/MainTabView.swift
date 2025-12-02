//
//  MainTabView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI
import Lottie

enum AppTab: Hashable {
    case home, workouts, stats, settings
}

struct MainTabView: View {
    
    @State private var selectedTab: AppTab = .home
    
    @AppStorage("hasShownSplash") private var hasShownSplash: Bool = false
    @State private var showSplash: Bool = false
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                HomeView().tag(AppTab.home).tabItem { Label("Home", systemImage: "house") }
                WorkoutsView().tag(AppTab.workouts).tabItem { Label("Workouts", systemImage: "flame") }
                StatsView().tag(AppTab.stats).tabItem { Label("Stats", systemImage: "chart.bar") }
                SettingsView().tag(AppTab.settings).tabItem { Label("Settings", systemImage: "gear") }
            }
            .tint(.orange)
            
            if showSplash {
                LottieSplashView(isShowing: $showSplash, animationName: "ExerciseForHealth")
            }
        }
        .onAppear {
            if hasShownSplash == false {
                showSplash = true
                hasShownSplash = true
            }
        }
    }
}
