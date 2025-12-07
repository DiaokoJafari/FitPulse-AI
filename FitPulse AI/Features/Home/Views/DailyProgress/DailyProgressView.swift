//
//  DailyProgressView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 05/12/2025.
//

import SwiftUI

struct DailyProgressView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            Text("Today's Progress")
                .font(.system(size: 22, weight: .bold))
                .padding(.horizontal)

            HStack {
                DailyProgressItemView(value: 0, title: "Workouts", color: .purple)
                DailyProgressItemView(value: 0, title: "Calories", color: .orange)
                DailyProgressItemView(value: 0, title: "Minutes", color: .green)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            )
            .padding(.horizontal)
        }
    }
}
