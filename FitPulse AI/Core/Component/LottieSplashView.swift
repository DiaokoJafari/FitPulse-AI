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
        GeometryReader { geometry in
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
                    .frame(
                        width: geometry.size.width / 3,
                        height: geometry.size.width / 3
                    )
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            }
        }
    }
}
