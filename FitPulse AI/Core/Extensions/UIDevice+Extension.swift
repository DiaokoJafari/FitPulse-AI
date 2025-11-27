//
//  UIDevice+Extension.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 26/11/2025.
//

import UIKit

public extension UIDevice {
    static var isIpad: Bool { UIDevice.current.userInterfaceIdiom == .pad }
    static var isIphone: Bool { UIDevice.current.userInterfaceIdiom == .phone }
}
