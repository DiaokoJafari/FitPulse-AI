//
//  User.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 10/11/2025.
//

import Foundation
import SwiftData

@Model
final class User {
    @Attribute(.unique) var id: UUID
    var name: String
    var age: Int
    var weight: Double 
    var height: Double
    var goal: String
    
    init(
        id: UUID = UUID(),
        name: String = "کاربر",
        age: Int = 25,
        weight: Double = 70,
        height: Double = 175,
        goal: String = "Fit & Healthy"
    ) {
        self.id = id
        self.name = name
        self.age = age
        self.weight = weight
        self.height = height
        self.goal = goal
    }
}
