//
//  SummaryRowView.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 08/12/2025.
//

import SwiftUI

struct SummaryRowView: View {
    let title: String
    let value: String
    let progress: Double
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.appBody)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text(value)
                    .font(.appBody)
            }
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Capsule()
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 8)
                    
                    Capsule()
                        .fill(color)
                        .frame(width: geometry.size.width * progress, height: 8)
                        .animation(.easeInOut, value: progress)
                }
            }
        }
        .padding()
    }
}
