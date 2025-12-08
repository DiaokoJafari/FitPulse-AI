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
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.appBody)
                    .fontWeight(.semibold)
                
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
            
            Spacer()
            
            Text(value)
                .font(.appBody)
                .frame(width: 40)
        }
        .padding()
    }
}
