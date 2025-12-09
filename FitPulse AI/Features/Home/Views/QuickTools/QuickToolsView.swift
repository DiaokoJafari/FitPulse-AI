//
//  QuickToolsView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 04/12/2025.
//

import SwiftUI

struct QuickTool: Identifiable {
    let id = UUID()
    let iconName: String
    let iconColor: Color
    let bgColor: Color
    let title: String
}

struct QuickToolsView: View {
    
    private let tools: [QuickTool] = [
        QuickTool(
            iconName: "fork.knife",
            iconColor: .purple,
            bgColor: .purple,
            title: "Nutrition"
        ),
        QuickTool(
            iconName: "heart.fill",
            iconColor: .red,
            bgColor: .red,
            title: "Heart Rate"
        ),
        QuickTool(
            iconName: "square.grid.2x2.fill",
            iconColor: .orange,
            bgColor: .orange,
            title: "BMI Calc"
        ),
        QuickTool(
            iconName: "drop.fill",
            iconColor: .blue,
            bgColor: .blue,
            title: "Water Tracker"
        )
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Text("Quick Tools")
                .font(.appSmallTitle)
                .padding(.horizontal)
            
            LazyVGrid(
                columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: UIDevice.isIpad ? 4 : 2),
                spacing: 16
            ) {
                ForEach(tools) { tool in
                    ToolItemView(
                        iconName: tool.iconName,
                        iconColor: tool.iconColor,
                        bgColor: tool.bgColor,
                        title: tool.title
                    )
                    .borderedCard()
                }
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
