//
//  Workout.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import SwiftUI
import SwiftData

@Model
final class Workout {
    @Attribute(.unique) var id: UUID
    var date: Date
    var workoutType: WorkoutType
    var repCount: Int?
    var duration: TimeInterval
    var caloriesBurned: Int
    
    init(
        id: UUID = UUID(),
        date: Date = Date(),
        workoutType: WorkoutType = .strengthTraining,
        repCount: Int? = nil,
        duration: TimeInterval = 0,
        caloriesBurned: Int = 0
    ) {
        self.id = id
        self.date = date
        self.workoutType = workoutType
        self.repCount = repCount
        self.duration = duration
        self.caloriesBurned = caloriesBurned
    }
}

// MARK: - Computed properties for UI
extension Workout {
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
    
    var repCountText: String {
        if let reps = repCount, reps > 0 {
            return "\(reps) reps"
        } else {
            return "-"
        }
    }
}




enum WorkoutType: String, Codable, CaseIterable {
    // Cardio
    case running, cycling, hiit
    
    // Strength
    case strengthTraining
    
    // Flexibility
    case yoga, pilates
    
    // Recovery
    case meditation, walking
}

extension WorkoutType {
    var iconName: String {
        switch self {
        case .running: return "figure.run"
        case .cycling: return "figure.outdoor.cycle"
        case .hiit: return "flame.fill"
        case .strengthTraining: return "dumbbell.fill"
        case .yoga: return "figure.yoga"
        case .pilates: return "figure.cooldown"
        case .meditation: return "brain.head.profile"
        case .walking: return "figure.walk"
        }
    }
    
    var iconColor: Color {
        switch self {
        case .running, .cycling, .hiit: return .red
        case .strengthTraining: return .purple
        case .yoga, .pilates: return .green
        case .meditation, .walking: return .blue
        }
    }
    
    var bgColor: Color {
        iconColor.opacity(0.2)
    }
    
    var displayName: String {
        switch self {
        case .running: return "Running"
        case .cycling: return "Cycling"
        case .hiit: return "HIIT"
        case .strengthTraining: return "Strength Training"
        case .yoga: return "Yoga Flow"
        case .pilates: return "Pilates"
        case .meditation: return "Meditation"
        case .walking: return "Walking"
        }
    }
}
