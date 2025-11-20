//
//  WorkoutsView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI

struct WorkoutsView: View {
    @StateObject private var viewModel = DIContainer.shared.makeWorkoutsViewModel()
    
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
