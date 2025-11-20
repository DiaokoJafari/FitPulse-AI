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
