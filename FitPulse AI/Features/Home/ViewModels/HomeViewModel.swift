//
//  HomeViewModel.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import Foundation
import SwiftUI
import SwiftData

@MainActor
final class HomeViewModel: ObservableObject {
    @Published var greeting: String = ""
    @Published var suggestionMessage: String = "Ready for today's workout?"
    @Published var todayCalories: Int = 0
    @Published var recentWorkouts: [WorkoutMock] = []   // اینجا struct ماک استفاده شد
    
    init() {
        updateGreeting()
        loadWorkoutsFromJSON()
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
    
    func loadWorkoutsFromJSON() {
        guard let url = Bundle.main.url(forResource: "WorkoutMockData", withExtension: "json") else {
            print("workouts.json not found")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let workouts = try decoder.decode([WorkoutMock].self, from: data)
            self.recentWorkouts = workouts.sorted { $0.date > $1.date } // مرتب‌سازی نزولی بر اساس تاریخ
        } catch {
            print("Failed to decode workouts.json:", error)
        }
    }
}
