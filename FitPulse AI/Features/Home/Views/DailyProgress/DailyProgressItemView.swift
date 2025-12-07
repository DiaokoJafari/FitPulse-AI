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
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(color)

            Text(title)
                .font(.system(size: 14))
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
    }
}
