//
//  View+Extension.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 07/12/2025.
//

import SwiftUI

public extension View {
    func borderedCard() -> some View {
        self
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray.opacity(0.15), lineWidth: 1)
            )
    }
}
