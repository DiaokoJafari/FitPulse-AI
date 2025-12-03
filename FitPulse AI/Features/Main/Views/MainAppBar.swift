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
            .padding()
            
            Spacer()
            
            Button {

            } label: {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 42, weight: .light))
                    .foregroundColor(.gray)
                    .overlay(
                        Image(systemName: "plus.circle")
                            .font(.system(size: 17, weight: .semibold))
                            .offset(x: 16, y: 16)
                            .foregroundColor(.black)
                            .opacity(isUserLoggedIn ? 0 : 1)
                    )
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
