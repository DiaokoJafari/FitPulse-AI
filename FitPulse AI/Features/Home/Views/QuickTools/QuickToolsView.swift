//
//  QuickToolsView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 04/12/2025.
//

import SwiftUI

struct QuickToolsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            Text("Quick Tools")
                .font(.system(size: 22, weight: .bold))
                .padding(.horizontal)

            LazyVGrid(
                columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2),
                spacing: 16
            ) {
                ToolItemView(
                    iconName: "timer",
                    iconColor: .green,
                    bgColor: .green,
                    title: "Timer"
                )

                ToolItemView(
                    iconName: "square.grid.2x2.fill",
                    iconColor: .orange,
                    bgColor: .orange,
                    title: "BMI Calc"
                )

                ToolItemView(
                    iconName: "fork.knife",
                    iconColor: .purple,
                    bgColor: .purple,
                    title: "Nutrition"
                )

                ToolItemView(
                    iconName: "heart.fill",
                    iconColor: .red,
                    bgColor: .red,
                    title: "Heart Rate"
                )
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
