//
//  MainAppBar.swift
//  FitPulse AI
//
//  Created by Diaoko Jafari on 03/12/2025.
//

import SwiftUI

public struct MainAppBar: View {
    
    var isUserLoggedIn: Bool

    public var body: some View {
        HStack {
            ZStack {
                Circle()
                    .stroke(Color.black.opacity(0.3), lineWidth: 2.2)
                    .frame(width: 42, height: 42)
                
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
            }
            .padding(.leading)
            
            Text("Fit\nPulse")
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
            
            Spacer()
            
            Button {

            } label: {
                Image(systemName: isUserLoggedIn ? "person.crop.circle" : "person.crop.circle.badge.plus")
                    .font(.system(size: 43, weight: .light))
                    .foregroundColor(.gray)
            }
            .buttonStyle(PlainButtonStyle())
            .padding()
        }
        .frame(height: 60)
        .background(Color(.systemBackground))
        
        Divider()
            .frame(height: 0.6)
            .background(Color.black.opacity(0.3))
    }
}
