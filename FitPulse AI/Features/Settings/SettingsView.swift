//
//  SettingsView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = DIContainer.shared.makeSettingsViewModel()
    
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
