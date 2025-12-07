//
//  WorkoutRowView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 07/12/2025.
//

import SwiftUI

struct WorkoutRowView: View {
    let workout: WorkoutMock
    
    var body: some View {
        HStack {
            ToolIconView(
                iconName: workout.workoutType.iconName,
                iconColor: workout.workoutType.iconColor,
                bgColor: workout.workoutType.bgColor
            )
            
            VStack(alignment: .leading, spacing: 4) {
                Text(workout.workoutType.displayName)
                    .font(.appBody)
                
                HStack(spacing: 10) {
                    Text(workout.durationText)
                    Text("•")
                    Text(workout.caloriesText)
                }
                .font(.appCaption)
                .foregroundColor(.gray)
            }
            .padding(.horizontal, 8)
            
            Spacer()
            
            Text(workout.daysAgoText)
                .font(.appBody)
                .foregroundColor(.gray.opacity(0.6))
        }
        .padding(8)
        .borderedCard()
    }
}
