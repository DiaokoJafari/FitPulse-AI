//
//  PermissionService.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 20/11/2025.
//

import UIKit
import AVFoundation
import UserNotifications

enum PermissionError: Error {
    case denied
    case restricted
    case notDetermined
    case unknown(Error)
}

final class PermissionService {
    static let shared = PermissionService()
    private init() {}
    
    func requestNotification() async -> Result<Bool, PermissionError> {
        do {
            let granted = try await UNUserNotificationCenter.current()
                .requestAuthorization(options: [.alert, .sound, .badge])
            
            if granted {
                await MainActor.run { UIApplication.shared.registerForRemoteNotifications() }
            }
            return .success(granted)
        } catch {
            return .failure(.unknown(error))
        }
    }
    
    func requestCamera() async -> Result<Bool, PermissionError> {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
        switch status {
        case .authorized: return .success(true)
        case .restricted: return .failure(.restricted)
        case .denied: return .failure(.denied)
        case .notDetermined:
            do {
                            let granted = try await AVCaptureDevice.requestAccess(for: .video)
                            return .success(granted)
                        } catch {
                            return .failure(.unknown(error))
                        }
        default:
            return .failure(.denied)
        }
    }
}
