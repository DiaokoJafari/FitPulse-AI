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
        ScrollView(.vertical, showsIndicators: false) {
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
                    .padding(.horizontal)
                
                QuickToolsView()
                
                DailyProgressView()

                
                if UIDevice.isIpad {
                    HStack {
                        RecentWorkoutsView()

                        WeeklySummaryView()
                    }
                } else {
                    VStack {
                        RecentWorkoutsView()

                        WeeklySummaryView()
                    }
                }
                
            }
            .padding(.vertical)
        }
        .scrollBounceBehavior(.basedOnSize)

        .task {
            viewModel.loadData()
        }
    }
}
