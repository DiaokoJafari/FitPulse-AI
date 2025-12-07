//
//  ToolIconView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 07/12/2025.
//

import SwiftUI

struct ToolIconView: View {
    let iconName: String
    let iconColor: Color
    let bgColor: Color
    var size: CGFloat = 40

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(bgColor.opacity(0.25))
                .frame(width: size, height: size)

            Image(systemName: iconName)
                .font(.system(size: size * 0.5, weight: .semibold))
                .foregroundColor(iconColor)
        }
        .frame(width: size, height: size)
    }
}
