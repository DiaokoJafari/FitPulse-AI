//
//  Font+Extension.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 27/11/2025.
//

import SwiftUI

public extension Font {
    
    static var appUltraLargeTitle: Font {
        .system(size: UIDevice.isIpad ? 36 : 30, weight: .bold)
    }
    
    static var appLargeTitle: Font {
        .system(size: UIDevice.isIpad ? 32 : 26, weight: .bold)
    }
    
    static var appTitle: Font {
        .system(size: UIDevice.isIpad ? 28 : 22, weight: .semibold)
    }
    
    static var appSmallTitle: Font {
        .system(size: UIDevice.isIpad ? 24 : 18, weight: .semibold)
    }
    
    static var appBody: Font {
        .system(size: UIDevice.isIpad ? 20 : 14, weight: .regular)
    }
    
    static var appCaption: Font {
        .system(size: UIDevice.isIpad ? 16 : 10, weight: .medium)
    }
    
    
    static var appButton: Font {
        .system(size: UIDevice.isIpad ? 18 : 12, weight: .semibold)
    }
}
