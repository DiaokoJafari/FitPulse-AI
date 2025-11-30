//
//  MainTabView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI
import Lottie

struct LottieSplashView: UIViewRepresentable {
    let name: String
    let completion: (() -> Void)?

    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        let animationView = LottieAnimationView(name: name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .playOnce
        animationView.play { finished in
            if finished {
                completion?()
            }
        }
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}

import SwiftUI
import Lottie

enum AppTab: Hashable {
    case home, workouts, stats, settings
}

struct MainTabView: View {

    @State private var selectedTab: AppTab = .home
    @State private var showSplash = true

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
                LottieSplashView(name: "ExerciseForHealth") {
                    // وقتی انیمیشن تموم شد
                    withAnimation {
                        showSplash = false
                    }
                }
                .background(Color.white)
            }
        }
    }
}
