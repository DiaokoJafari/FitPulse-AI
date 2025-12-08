//
//  WeeklyViewModel.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 08/12/2025.
//

import SwiftUI

struct WeeklyProgressItemModel: Identifiable {
    let id = UUID()
    let title: String
    let value: String
    let barColor: Color
    let progress: Double
}
