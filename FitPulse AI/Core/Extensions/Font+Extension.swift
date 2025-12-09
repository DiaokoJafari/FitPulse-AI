//
//  Font+Extension.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 27/11/2025.
//

import SwiftUI

public extension Font {
    
    static var appUltraLargeTitle: Font {
        .system(size: UIDevice.isIpad ? 34 : 30, weight: .bold)
    }
    
    static var appLargeTitle: Font {
        .system(size: UIDevice.isIpad ? 30 : 26, weight: .bold)
    }
    
    static var appTitle: Font {
        .system(size: UIDevice.isIpad ? 26 : 22, weight: .semibold)
    }
    
    static var appSmallTitle: Font {
        .system(size: UIDevice.isIpad ? 22 : 18, weight: .semibold)
    }
    
    static var appBody: Font {
        .system(size: UIDevice.isIpad ? 18 : 14, weight: .regular)
    }
    
    static var appCaption: Font {
        .system(size: UIDevice.isIpad ? 14 : 10, weight: .medium)
    }
    
    
    static var appButton: Font {
        .system(size: UIDevice.isIpad ? 16 : 12, weight: .semibold)
    }
}
