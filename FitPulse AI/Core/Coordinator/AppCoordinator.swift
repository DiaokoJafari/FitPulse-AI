//
//  AppCoordinator.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 30/11/2025.
//

import SwiftUI
import Observation

// MARK: - Routes
enum RootRoute: Hashable {
    case auth(AuthRoute)
    case main(MainRoute)
}

enum AuthRoute: Hashable {
    case login
    case register
    case forgotPassword
}

enum MainRoute: Hashable {
    case home
}

// MARK: - Coordinator
@MainActor
final class AppCoordinator: ObservableObject {

    // Navigation stack path
    @Published var path = NavigationPath()

    // Sheet presentation
    @Published var sheet: RootRoute? = nil

    // Alerts
    @Published var alertMessage: String? = nil

    // MARK: - START FLOW
    func start() {
        // Clear stack and start at login (or home if already auth'd)
        path = NavigationPath()
        path.append(RootRoute.main(.home))
    }

    // MARK: - Navigation helpers
    func push(_ route: RootRoute) {
        path.append(route)
    }

    func pushAuth(_ route: AuthRoute) {
        path.append(RootRoute.auth(route))
    }

    func pushMain(_ route: MainRoute) {
        path.append(RootRoute.main(route))
    }

    func pop() {
        // safe remove last
        if !path.isEmpty {
            path.removeLast()
        }
    }

    func popToRoot() {
        // reset navigation stack
        path = NavigationPath()
    }

    // MARK: - Sheet handling
    func presentSheet(_ route: RootRoute) {
        sheet = route
    }

    func dismissSheet() {
        sheet = nil
    }
}
