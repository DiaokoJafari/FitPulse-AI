//
//  WeeklyProgressView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 07/12/2025.
//

import SwiftUI

struct WeeklySummaryView: View {
    
    let summaryItems: [WeeklyProgressItemModel] = [
        WeeklyProgressItemModel(title: "Workouts", value: "4",    barColor: .purple, progress: 0.78),
        WeeklyProgressItemModel(title: "Calories", value: "1.2K", barColor: .orange, progress: 0.52),
        WeeklyProgressItemModel(title: "Active Time", value: "2.5h", barColor: .green, progress: 0.38)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Weekly Summary")
                .font(.appSmallTitle)
                .padding(.horizontal)
            
            card
                .padding()
        }
    }
    
    private var card: some View {
        VStack(spacing: 0) {
            ForEach(summaryItems) { item in
                SummaryRowView(
                    title: item.title,
                    value: item.value,
                    progress: item.progress,
                    color: item.barColor
                )
            }
        }
        .borderedCard()
    }
}
