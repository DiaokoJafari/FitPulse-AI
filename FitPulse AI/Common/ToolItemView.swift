//
//  ToolItemView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 05/12/2025.
//

import SwiftUI

struct ToolItemView: View {
    let iconName: String
    let iconColor: Color
    let bgColor: Color
    var title: String = ""
    var size: CGFloat = 60

    var body: some View {
        VStack(spacing: 12) {
            ToolIconView(
                iconName: iconName,
                iconColor: iconColor,
                bgColor: bgColor,
                size: size
            )

            if !title.isEmpty {
                Text(title)
                    .font(.appBody)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}
