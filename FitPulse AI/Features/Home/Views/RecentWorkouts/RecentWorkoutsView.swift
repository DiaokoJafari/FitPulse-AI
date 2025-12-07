//
//  RecentWorkoutsView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 06/12/2025.
//

import SwiftUI

struct RecentWorkoutsView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            HStack {
                Text("Recent Workouts")
                    .font(.appSmallTitle)

                Spacer()
                
                Text("View All")
                    .font(.appBody)
                    .foregroundColor(.blue)
            }
            
            LazyVStack(spacing: 18) {
                ForEach(viewModel.recentWorkouts.prefix(4)) { workout in
                    WorkoutRowView(workout: workout)
                }
            }
        }
        .padding()
    }
}
