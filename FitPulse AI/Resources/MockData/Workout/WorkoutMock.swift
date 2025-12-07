//
//  WorkoutMock.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 07/12/2025.
//

import Foundation

struct WorkoutMock: Codable, Identifiable {
    let id: UUID
    let date: Date
    let workoutType: WorkoutType
    let repCount: Int?
    let duration: TimeInterval
    let caloriesBurned: Int

    var durationText: String {
        let minutes = Int(duration / 60)
        return "\(minutes) min"
    }
    
    var caloriesText: String {
        "\(caloriesBurned) kcal"
    }
    
    var daysAgoText: String {
        let days = Calendar.current.dateComponents([.day], from: date, to: Date()).day ?? 0
        return days == 0 ? "Today" : "\(days) days ago"
    }
}
