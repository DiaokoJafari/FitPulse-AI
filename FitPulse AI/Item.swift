//
//  Item.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 07/11/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
