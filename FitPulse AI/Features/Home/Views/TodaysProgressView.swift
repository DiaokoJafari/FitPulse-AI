//
//  TodaysProgressView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 05/12/2025.
//

import SwiftUI

struct TodaysProgressView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            Text("Today's Progress")
                .font(.system(size: 22, weight: .bold))
                .padding(.horizontal)

            HStack {
                ProgressItemView(value: 0, title: "Workouts", color: .purple)
                ProgressItemView(value: 0, title: "Calories", color: .orange)
                ProgressItemView(value: 0, title: "Minutes", color: .green)
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
