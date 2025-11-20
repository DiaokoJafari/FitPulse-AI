//
//  WorkoutsViewModel.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import Foundation

@MainActor
final class WorkoutsViewModel: ObservableObject {
    @Published var greeting: String = "سلام!"
    @Published var todayCalories: Int = 0
    
    func loadData() {
        todayCalories = 450 // mock
    }
}
