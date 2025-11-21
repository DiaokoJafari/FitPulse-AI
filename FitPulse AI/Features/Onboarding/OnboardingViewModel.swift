//
//  OnboardingViewModel.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 20/11/2025.
//

import Foundation

@MainActor
final class OnboardingViewModel: ObservableObject {
    @Published var currentPage = 0
    @Published var hasSeenOnboarding = false
    @Published var isNotificationGranted = false
    @Published var isCameraGranted = false
    @Published var permissionError: String?
    
    private let totalPages = 5
    private let permissionService = PermissionService.shared
    
    func nextPage() {
        if currentPage < totalPages - 1 {
            currentPage += 1
        } else {
            finishOnboarding()
        }
    }
    
    func skipOnboarding() {
        finishOnboarding()
    }
    
    private func finishOnboarding() {
        UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
        hasSeenOnboarding = true
    }
    
    func requestNotification() async {
        let result = await permissionService.requestNotification()
        
        switch result {
        case .success(let granted):
            isNotificationGranted = granted
            if granted { nextPage() }
            
        case .failure(let error):
            isNotificationGranted = false
            handleError(error)
        }
    }
    
    func requestCamera() async {
        let result = await permissionService.requestCamera()
        
        switch result {
        case .success(let granted):
            isCameraGranted = granted
            nextPage()
            
        case .failure(let error):
            isCameraGranted = false
            handleError(error)
        }
    }
    
    private func handleError(_ error: PermissionError) {
        switch error {
        case .denied, .restricted:
            permissionError = "دسترسی رد شده. می‌تونی بعداً از تنظیمات اجازه بدی."
        case .notDetermined:
            permissionError = "وضعیت دسترسی مشخص نیست."
        case .unknown(let underlyingError):
            permissionError = "خطا در دسترسی: \(underlyingError.localizedDescription)"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.permissionError = nil
        }
    }
}
