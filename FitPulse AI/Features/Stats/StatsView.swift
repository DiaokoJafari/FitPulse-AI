//
//  StatsView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI

struct StatsView: View {
    @StateObject private var viewModel = DIContainer.shared.makeStatsViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.greeting)
                .font(.largeTitle)
            Text("\(viewModel.todayCalories) کالری امروز")
        }
        .task {
            viewModel.loadData()
        }
    }
}
