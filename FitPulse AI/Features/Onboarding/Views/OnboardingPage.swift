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
                VStack(spacing: 30) {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.top, 40)

                    VStack(spacing: 16) {
                        Text(title)
                            .font(.title)
                            .multilineTextAlignment(.center)

                        Text(subtitle)
                            .font(.title3)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                    }

                    VStack {
                        if let primary = primaryButton {
                            Button(primary) {
                                onPrimary?()
                            }
                            .buttonStyle(.borderedProminent)
                            .controlSize(.large)

                            if let secondary = secondaryButton {
                                Button(secondary) {
                                    onSecondary?()
                                }
                                .foregroundColor(.secondary)
                            }
                        }
                    }
                }
            }
            .scrollBounceBehavior(.basedOnSize)
        }
    }
}
