//
//  WeeklyProgressView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 07/12/2025.
//

import SwiftUI

struct WeeklySummaryView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 2) {
            Text ("Weekly Summary")
                .font(.appSmallTitle)
                .padding(.horizontal)
            
            VStack(spacing: 0) {
                SummaryRow(
                    title: "Workouts",
                    value: "4",
                    progress: 0.78,
                    color: Color.purple
                )
                
                SummaryRow(
                    title: "Calories",
                    value: "1.2K",
                    progress: 0.52,
                    color: Color.orange
                )
                
                SummaryRow(
                    title: "Active Time",
                    value: "2.5h",
                    progress: 0.38,
                    color: Color.green
                )
            }
            .borderedCard()
            .padding()
        }
    }
}

struct SummaryRow: View {
    let title: String
    let value: String
    let progress: Double
    let color: Color
    
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.appBody)
                    .fontWeight(.semibold)
                
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        Capsule()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 8)
                        
                        Capsule()
                            .fill(color)
                            .frame(width: geometry.size.width * progress, height: 8)
                            .animation(.easeInOut, value: progress)
                    }
                }
            }
            
            Spacer()
            
            Text(value)
                .font(.appBody)
                .frame(width: 40)
        }
        .padding()
    }
}
