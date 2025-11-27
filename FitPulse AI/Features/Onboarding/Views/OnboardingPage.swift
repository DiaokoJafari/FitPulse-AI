//
//  OnboardingPage.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 20/11/2025.
//

import SwiftUI

enum OnboardingPageType {
    case welcomeStep
    case benefitsStep
    case notificationStep
    case cameraStep
    case finalStep
}

struct OnboardingPage: View {
    let title: String
    let subtitle: String
    let image: String
    var primaryButton: String? = nil
    var onPrimary: (() -> Void)? = nil
    var secondaryButton: String? = nil
    var onSecondary: (() -> Void)? = nil
    var viewType: OnboardingPageType? = nil
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: UIDevice.isIpad ? 60 : 30) {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(
                            width: UIDevice.isIpad ? 300 : 180,
                            height: UIDevice.isIpad ? 280 : 180
                        )
                        .padding(.top, UIDevice.isIpad ? 80 : 40)

                    VStack(spacing: 16) {
                        Text(title)
                            .font(.appTitle)
                            .multilineTextAlignment(.center)

                        Text(subtitle)
                            .font(.appSmallTitle)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                    }

                    VStack(spacing: 20) {
                        if let primary = primaryButton {
                            Button(primary) {
                                onPrimary?()
                            }
                            .font(.appButton)
                            .buttonStyle(.borderedProminent)
                            .controlSize(.large)

                            if let secondary = secondaryButton {
                                Button(secondary) {
                                    onSecondary?()
                                }
                                .font(.appButton)
                                .foregroundColor(.secondary)
                                .controlSize(.large)
                            }
                        }
                    }
                }
            }
            .scrollBounceBehavior(.basedOnSize)
        }
    }
}
