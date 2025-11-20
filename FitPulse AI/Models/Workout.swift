//
//  Workout.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import Foundation
import SwiftData

@Model
final class Workout {
    @Attribute(.unique) var id: UUID
    var date: Date
    var exerciseType: String   
    var repCount: Int
    var duration: TimeInterval
    var caloriesBurned: Int
    
    init(
        id: UUID = UUID(),
        date: Date = Date(),
        exerciseType: String,
        repCount: Int = 0,
        duration: TimeInterval = 0,
        caloriesBurned: Int = 0
    ) {
        self.id = id
        self.date = date
        self.exerciseType = exerciseType
        self.repCount = repCount
        self.duration = duration
        self.caloriesBurned = caloriesBurned
    }
}
