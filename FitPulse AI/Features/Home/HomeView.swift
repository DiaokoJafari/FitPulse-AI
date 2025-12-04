//
//  HomeView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = DIContainer.shared.makeHomeViewModel()
    
    var body: some View {
        VStack(spacing: 30) {
            VStack(alignment: .leading, spacing: 2) {
                Text(viewModel.greeting)
                    .font(.appTitle)
                Text(viewModel.suggestionMessage)
                    .font(.appBody)
                    .foregroundStyle(.black.opacity(0.6))
            }
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            GradientRectangleView()
            
            Spacer()
        }
        
        .task {
            viewModel.loadData()
        }
    }
}

struct GradientRectangleView: View {
    var body: some View {
        let startColor = Color(red: 100/255, green: 100/255, blue: 232/255)
        let endColor = Color(red: 135/255, green: 60/255, blue: 226/255)

        Rectangle()
            .fill(.linearGradient(
                colors: [startColor, endColor],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
            .frame(height: 200)
            .cornerRadius(20)
            .padding(.horizontal)
    }
}
