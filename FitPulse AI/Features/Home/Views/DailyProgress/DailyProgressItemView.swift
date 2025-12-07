//
//  DailyProgressItemView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 05/12/2025.
//

import SwiftUI

struct DailyProgressItemView: View {
    let value: Int
    let title: String
    let color: Color

    var body: some View {
        VStack(spacing: 4) {
            Text("\(value)")
                .font(.appTitle)
                .foregroundColor(color)

            Text(title)
                .font(.appBody)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
    }
}
