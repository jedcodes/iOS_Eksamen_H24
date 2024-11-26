//
//  MainView.swift
//  News_App
//
//  Created by Jack Delamou on 25/11/2024.
//

import SwiftUI

struct MainView: View {
    @State private var showSplashView: Bool = true
    var body: some View {
      
        ZStack {
            if showSplashView {
                 SplashView()
                    .transition(.opacity)
                    .animation(.easeOut(duration: 1.5))
                    
             } else {
                 DashboardView()
             }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3 ) {
                withAnimation {
                    self.showSplashView = false
                }
            }
        }
    }
        
}

#Preview {
    MainView()
}
