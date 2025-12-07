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
        workoutType: WorkoutType = .fullBody,
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
    case running, cycling, hiit, jumpRope
    
    // Strength
    case upperBody, lowerBody, core, fullBody
    
    // Flexibility
    case yoga, pilates, stretching
    
    // Recovery
    case meditation, walking, breathing
}

extension WorkoutType {
    var iconName: String {
        switch self {
        case .running: return "figure.run"
        case .cycling: return "bicycle"
        case .hiit: return "flame.fill"
        case .jumpRope: return "figure.jump.rope"
        case .upperBody: return "dumbbell"
        case .lowerBody: return "figure.stand"
        case .core: return "figure.core"
        case .fullBody: return "figure.walk"
        case .yoga: return "leaf.fill"
        case .pilates: return "figure.stretch"
        case .stretching: return "figure.stretch"
        case .meditation: return "brain.head.profile"
        case .walking: return "figure.walk"
        case .breathing: return "lungs.fill"
        }
    }
    
    var iconColor: Color {
        switch self {
        case .running, .cycling, .hiit, .jumpRope: return .red
        case .upperBody, .lowerBody, .core, .fullBody: return .purple
        case .yoga, .pilates, .stretching: return .green
        case .meditation, .walking, .breathing: return .blue
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
        case .jumpRope: return "Jump Rope"
        case .upperBody: return "Upper Body"
        case .lowerBody: return "Lower Body"
        case .core: return "Core"
        case .fullBody: return "Full Body"
        case .yoga: return "Yoga Flow"
        case .pilates: return "Pilates"
        case .stretching: return "Stretching"
        case .meditation: return "Meditation"
        case .walking: return "Walking"
        case .breathing: return "Breathing"
        }
    }
}
