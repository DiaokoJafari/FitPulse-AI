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
                .font(.appSmallTitle)
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
                .borderedCard()

                ToolItemView(
                    iconName: "square.grid.2x2.fill",
                    iconColor: .orange,
                    bgColor: .orange,
                    title: "BMI Calc"
                )
                .borderedCard()

                ToolItemView(
                    iconName: "fork.knife",
                    iconColor: .purple,
                    bgColor: .purple,
                    title: "Nutrition"
                )
                .borderedCard()

                ToolItemView(
                    iconName: "heart.fill",
                    iconColor: .red,
                    bgColor: .red,
                    title: "Heart Rate"
                )
                .borderedCard()
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
