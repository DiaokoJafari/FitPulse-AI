//
//  LottieSplashView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 01/12/2025.
//

import SwiftUI
import Lottie

struct LottieSplashView: View {
    
    @Binding var isShowing: Bool
    let animationName: String
    @State private var opacity: Double = 1.0
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            LottieView(animation: .named("ExerciseForHealth"))
                .playing(loopMode: .playOnce)
                .configure { animationView in
                    animationView.play { completed in
                        if completed {
                            withAnimation {
                                opacity = 0.0
                            }
                            
                            Task {
                                try? await Task.sleep(for: .seconds(0.2))
                                isShowing = false
                            }
                        }
                    }
                }
                .opacity(opacity)
        }
    }
}
