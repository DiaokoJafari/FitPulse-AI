//
//  HomeViewModel.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import Foundation

@MainActor
final class HomeViewModel: ObservableObject {
    @Published var greeting: String = ""
    @Published var suggestionMessage: String = "Ready for today's workout?"
    @Published var todayCalories: Int = 0
    
    init() {
        updateGreeting()
    }
    
    func loadData() {
        todayCalories = 450
    }
    
    func updateGreeting() {
        let hour = Calendar.current.component(.hour, from: Date())
        
        switch hour {
        case 5..<12:
            greeting = "Good Morning!"
        case 12..<17:
            greeting = "Good Afternoon!"
        case 17..<22:
            greeting = "Good Evening!"
        default:
            greeting = "It’s Pretty Late!"
            suggestionMessage = "I think tomorrow works better."
        }
    }
}
