//
//  QuickToolItemView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 05/12/2025.
//

import SwiftUI

struct QuickToolItemView: View {
    let iconName: String
    let iconColor: Color
    let bgColor: Color
    let title: String

    var body: some View {
        VStack(spacing: 12) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(bgColor.opacity(0.25))
                    .frame(width: 60, height: 60)

                Image(systemName: iconName)
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(iconColor)
            }

            Text(title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.15), lineWidth: 1)
        )
    }
}
